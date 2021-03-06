/*
 * Copyright 2018 WebAssembly Community Group participants
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "ir/branch-utils.h"
#include "ir/find_all.h"
#include "ir/utils.h"

namespace wasm {

static Type getValueType(Expression* value) {
  return value ? value->type : Type::none;
}

namespace {

// Handles a branch fixup for visitBlock: if the branch goes to the
// target name, give it a value which is unreachable.
template<typename T>
void handleBranchForVisitBlock(T* curr, Name name, Module* module) {
  if (BranchUtils::getUniqueTargets(curr).count(name)) {
    assert(!curr->value);
    Builder builder(*module);
    curr->value = builder.makeUnreachable();
  }
}

} // anonymous namespace

void ReFinalize::visitBlock(Block* curr) {
  if (curr->list.size() == 0) {
    curr->type = Type::none;
    return;
  }
  // Get the least upper bound type of the last element and all branch return
  // values
  curr->type = curr->list.back()->type;
  if (curr->name.is()) {
    auto iter = breakValues.find(curr->name);
    if (iter != breakValues.end()) {
      curr->type = Type::getLeastUpperBound(curr->type, iter->second);
      return;
    }
  }
  if (curr->type == Type::unreachable) {
    return;
  }
  // type is none, but we might be unreachable
  if (curr->type == Type::none) {
    for (auto* child : curr->list) {
      if (child->type == Type::unreachable) {
        curr->type = Type::unreachable;
        break;
      }
    }
  }
}
void ReFinalize::visitIf(If* curr) { curr->finalize(); }
void ReFinalize::visitLoop(Loop* curr) { curr->finalize(); }
void ReFinalize::visitBreak(Break* curr) {
  curr->finalize();
  auto valueType = getValueType(curr->value);
  if (valueType == Type::unreachable) {
    replaceUntaken(curr->value, curr->condition);
  } else {
    updateBreakValueType(curr->name, valueType);
  }
}
void ReFinalize::visitSwitch(Switch* curr) {
  curr->finalize();
  auto valueType = getValueType(curr->value);
  if (valueType == Type::unreachable) {
    replaceUntaken(curr->value, curr->condition);
  } else {
    for (auto target : curr->targets) {
      updateBreakValueType(target, valueType);
    }
    updateBreakValueType(curr->default_, valueType);
  }
}
void ReFinalize::visitCall(Call* curr) { curr->finalize(); }
void ReFinalize::visitCallIndirect(CallIndirect* curr) { curr->finalize(); }
void ReFinalize::visitLocalGet(LocalGet* curr) { curr->finalize(); }
void ReFinalize::visitLocalSet(LocalSet* curr) { curr->finalize(); }
void ReFinalize::visitGlobalGet(GlobalGet* curr) { curr->finalize(); }
void ReFinalize::visitGlobalSet(GlobalSet* curr) { curr->finalize(); }
void ReFinalize::visitLoad(Load* curr) { curr->finalize(); }
void ReFinalize::visitStore(Store* curr) { curr->finalize(); }
void ReFinalize::visitAtomicRMW(AtomicRMW* curr) { curr->finalize(); }
void ReFinalize::visitAtomicCmpxchg(AtomicCmpxchg* curr) { curr->finalize(); }
void ReFinalize::visitAtomicWait(AtomicWait* curr) { curr->finalize(); }
void ReFinalize::visitAtomicNotify(AtomicNotify* curr) { curr->finalize(); }
void ReFinalize::visitAtomicFence(AtomicFence* curr) { curr->finalize(); }
void ReFinalize::visitSIMDExtract(SIMDExtract* curr) { curr->finalize(); }
void ReFinalize::visitSIMDReplace(SIMDReplace* curr) { curr->finalize(); }
void ReFinalize::visitSIMDShuffle(SIMDShuffle* curr) { curr->finalize(); }
void ReFinalize::visitSIMDTernary(SIMDTernary* curr) { curr->finalize(); }
void ReFinalize::visitSIMDShift(SIMDShift* curr) { curr->finalize(); }
void ReFinalize::visitSIMDLoad(SIMDLoad* curr) { curr->finalize(); }
void ReFinalize::visitMemoryInit(MemoryInit* curr) { curr->finalize(); }
void ReFinalize::visitDataDrop(DataDrop* curr) { curr->finalize(); }
void ReFinalize::visitMemoryCopy(MemoryCopy* curr) { curr->finalize(); }
void ReFinalize::visitMemoryFill(MemoryFill* curr) { curr->finalize(); }
void ReFinalize::visitConst(Const* curr) { curr->finalize(); }
void ReFinalize::visitUnary(Unary* curr) { curr->finalize(); }
void ReFinalize::visitBinary(Binary* curr) { curr->finalize(); }
void ReFinalize::visitSelect(Select* curr) { curr->finalize(); }
void ReFinalize::visitDrop(Drop* curr) { curr->finalize(); }
void ReFinalize::visitReturn(Return* curr) { curr->finalize(); }
void ReFinalize::visitHost(Host* curr) { curr->finalize(); }
void ReFinalize::visitRefNull(RefNull* curr) { curr->finalize(); }
void ReFinalize::visitRefIsNull(RefIsNull* curr) { curr->finalize(); }
void ReFinalize::visitRefFunc(RefFunc* curr) { curr->finalize(); }
void ReFinalize::visitTry(Try* curr) { curr->finalize(); }
void ReFinalize::visitThrow(Throw* curr) { curr->finalize(); }
void ReFinalize::visitRethrow(Rethrow* curr) { curr->finalize(); }
void ReFinalize::visitBrOnExn(BrOnExn* curr) {
  curr->finalize();
  if (curr->exnref->type == Type::unreachable) {
    replaceUntaken(curr->exnref, nullptr);
  } else {
    updateBreakValueType(curr->name, curr->sent);
  }
}
void ReFinalize::visitNop(Nop* curr) { curr->finalize(); }
void ReFinalize::visitUnreachable(Unreachable* curr) { curr->finalize(); }
void ReFinalize::visitPush(Push* curr) { curr->finalize(); }
void ReFinalize::visitPop(Pop* curr) { curr->finalize(); }
void ReFinalize::visitTupleMake(TupleMake* curr) { curr->finalize(); }
void ReFinalize::visitTupleExtract(TupleExtract* curr) { curr->finalize(); }

void ReFinalize::visitFunction(Function* curr) {
  // we may have changed the body from unreachable to none, which might be bad
  // if the function has a return value
  if (curr->sig.results != Type::none && curr->body->type == Type::none) {
    Builder builder(*getModule());
    curr->body = builder.blockify(curr->body, builder.makeUnreachable());
  }
}

void ReFinalize::visitExport(Export* curr) { WASM_UNREACHABLE("unimp"); }
void ReFinalize::visitGlobal(Global* curr) { WASM_UNREACHABLE("unimp"); }
void ReFinalize::visitTable(Table* curr) { WASM_UNREACHABLE("unimp"); }
void ReFinalize::visitMemory(Memory* curr) { WASM_UNREACHABLE("unimp"); }
void ReFinalize::visitEvent(Event* curr) { WASM_UNREACHABLE("unimp"); }
void ReFinalize::visitModule(Module* curr) { WASM_UNREACHABLE("unimp"); }

void ReFinalize::updateBreakValueType(Name name, Type type) {
  if (type != Type::unreachable) {
    if (breakValues.count(name) == 0) {
      breakValues[name] = type;
    } else {
      breakValues[name] = Type::getLeastUpperBound(breakValues[name], type);
    }
  }
}

// Replace an untaken branch/switch with an unreachable value.
// A condition may also exist and may or may not be unreachable.
void ReFinalize::replaceUntaken(Expression* value, Expression* condition) {
  assert(value->type == Type::unreachable);
  auto* replacement = value;
  if (condition) {
    Builder builder(*getModule());
    // Even if we have
    //  (block
    //   (unreachable)
    //   (i32.const 1)
    //  )
    // we want the block type to be unreachable. That is valid as
    // the value is unreachable, and necessary since the type of
    // the condition did not have an impact before (the break/switch
    // type was unreachable), and might not fit in.
    if (condition->type.isConcrete()) {
      condition = builder.makeDrop(condition);
    }
    replacement = builder.makeSequence(value, condition);
    assert(replacement->type.getSingle());
  }
  replaceCurrent(replacement);
}

} // namespace wasm
