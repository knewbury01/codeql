// generated by codegen, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `LetStmt`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.internal.generated.LetStmt

/**
 * INTERNAL: This module contains the customizable definition of `LetStmt` and should not
 * be referenced directly.
 */
module Impl {
  /**
   * A let statement. For example:
   * ```
   * let x = 42;
   * let x: i32 = 42;
   * let x: i32;
   * let x;
   * let (x, y) = (1, 2);
   * let Some(x) = std::env::var("FOO") else {
   *     return;
   * };
   */
  class LetStmt extends Generated::LetStmt { }
}
