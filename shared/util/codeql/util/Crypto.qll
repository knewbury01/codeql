/** Provides the `Crypto` class. */

private import codeql.util.Location

/** The basic alg category */
private newtype TCryptoAlgorithm =
  Hash() or
  AsymmetricAlg() or
  SymmetricAlg()

newtype TCryptoAssetProperty =
  Key() or
  KeyLen() or
  Mode()

newtype TCryptographicOperation =
  KeyGen() or
  Signature() or
  MAC() or
  RandGen() or
  //not encrypt/decrypt bc those are not disjunct
  Cipher()

/** The trivial type with a single element. */
class CryptoAssetBase extends TCryptoAlgorithm {
  /** Gets a textual representation of this element. */
  string toString() { result = "crypto asset base" }
}

/** Provides language-specific crypto use graph flow parameters. */
signature module CryptoSig<LocationSig Location> {
  /**
   * An algorithm node in the crypto flow graph.
   */
  class CryptoAlgorithmNode extends TCryptoAlgorithm {
    /** Gets a textual representation of this element. */
    string toString();

    /** Gets the location of this node. */
    Location getLocation();
  }

  /**
   * A property value
   */
  class CryptoPropertyNode extends TCryptoAssetProperty {
    /**
     * Gets a textual representation of this element.
     */
    string toString();
  }

  /**
   * A dummy property value which is used when something is not known
   */
  class UnknownPropertyValue extends CryptoPropertyNode;

  /**
   * A known property value which is used when something is not known
   */
  class KnownPropertyValue extends CryptoPropertyNode;

  /**
   * An operation node in the crypto flow graph.
   */
  class CryptoOperationNode extends TCryptographicOperation {
    /** Gets a textual representation of this element. */
    string toString();

    /** Gets the location of this node. */
    Location getLocation();
  }

  /**
   * Holds if there is a simple crypto flow step from `node1` to `node2`. These
   * are the relations of crypto operations
   */
  predicate simpleCryptoOperationFlowStep(CryptoOperationNode node1, CryptoOperationNode node2);

  /**
   * Holds if there is a simple crypto flow step from `node1` to `node2`. These
   * are the relations of crypto operations
   */
  predicate simpleCryptoAlgorithmToPropertyFlowStep(
    CryptoAlgorithmNode node1, CryptoPropertyNode node2
  );
}
