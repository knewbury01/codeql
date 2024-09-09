// generated by codegen
/**
 * This module provides the generated definition of `IfLet`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.generated.Synth
private import codeql.rust.generated.Raw
import codeql.rust.elements.Expr
import codeql.rust.elements.Pat
import codeql.rust.elements.Stmt
import codeql.rust.elements.TypeRef

/**
 * INTERNAL: This module contains the fully generated definition of `IfLet` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::IfLet` class directly.
   * Use the subclass `IfLet`, where the following predicates are available.
   */
  class IfLet extends Synth::TIfLet, Stmt {
    override string getAPrimaryQlClass() { result = "IfLet" }

    /**
     * Gets the pat of this if let.
     */
    Pat getPat() {
      result = Synth::convertPatFromRaw(Synth::convertIfLetToRaw(this).(Raw::IfLet).getPat())
    }

    /**
     * Gets the type reference of this if let, if it exists.
     */
    TypeRef getTypeRef() {
      result =
        Synth::convertTypeRefFromRaw(Synth::convertIfLetToRaw(this).(Raw::IfLet).getTypeRef())
    }

    /**
     * Holds if `getTypeRef()` exists.
     */
    final predicate hasTypeRef() { exists(this.getTypeRef()) }

    /**
     * Gets the initializer of this if let, if it exists.
     */
    Expr getInitializer() {
      result =
        Synth::convertExprFromRaw(Synth::convertIfLetToRaw(this).(Raw::IfLet).getInitializer())
    }

    /**
     * Holds if `getInitializer()` exists.
     */
    final predicate hasInitializer() { exists(this.getInitializer()) }

    /**
     * Gets the else of this if let, if it exists.
     */
    Expr getElse() {
      result = Synth::convertExprFromRaw(Synth::convertIfLetToRaw(this).(Raw::IfLet).getElse())
    }

    /**
     * Holds if `getElse()` exists.
     */
    final predicate hasElse() { exists(this.getElse()) }
  }
}
