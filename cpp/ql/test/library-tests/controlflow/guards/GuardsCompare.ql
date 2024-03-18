/**
 * @name Guards comparison test
 * @description List comparison parts.
 * @kind test
 */

import cpp
import semmle.code.cpp.controlflow.Guards

from GuardCondition guard, Expr left, int k, string which, string op, string msg
where
  exists(boolean sense |
    sense = true and which = "true"
    or
    sense = false and which = "false"
  |
    exists(Expr right |
      guard.comparesLt(left, right, k, true, sense) and op = " < "
      or
      guard.comparesLt(left, right, k, false, sense) and op = " >= "
      or
      guard.comparesEq(left, right, k, true, sense) and op = " == "
      or
      guard.comparesEq(left, right, k, false, sense) and op = " != "
    |
      msg = left + op + right + "+" + k + " when " + guard + " is " + which
    )
    or
    (
      guard.comparesEq(left, k, true, sense) and op = " == "
      or
      guard.comparesEq(left, k, false, sense) and op = " != "
    ) and
    msg = left + op + k + " when " + guard + " is " + which
  )
select guard.getLocation().getStartLine(), msg
