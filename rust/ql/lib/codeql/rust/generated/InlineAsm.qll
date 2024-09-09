// generated by codegen
/**
 * This module provides the generated definition of `InlineAsm`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.generated.Synth
private import codeql.rust.generated.Raw
import codeql.rust.elements.Expr

/**
 * INTERNAL: This module contains the fully generated definition of `InlineAsm` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::InlineAsm` class directly.
   * Use the subclass `InlineAsm`, where the following predicates are available.
   */
  class InlineAsm extends Synth::TInlineAsm, Expr {
    override string getAPrimaryQlClass() { result = "InlineAsm" }

    /**
     * Gets the expression of this inline asm.
     */
    Expr getExpr() {
      result =
        Synth::convertExprFromRaw(Synth::convertInlineAsmToRaw(this).(Raw::InlineAsm).getExpr())
    }
  }
}
