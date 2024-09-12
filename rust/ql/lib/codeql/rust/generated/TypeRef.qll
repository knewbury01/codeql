// generated by codegen
/**
 * This module provides the generated definition of `TypeRef`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.generated.Synth
private import codeql.rust.generated.Raw
import codeql.rust.elements.AstNode
import codeql.rust.elements.Unimplemented

/**
 * INTERNAL: This module contains the fully generated definition of `TypeRef` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::TypeRef` class directly.
   * Use the subclass `TypeRef`, where the following predicates are available.
   */
  class TypeRef extends Synth::TTypeRef, AstNode, Unimplemented {
    override string getAPrimaryQlClass() { result = "TypeRef" }
  }
}
