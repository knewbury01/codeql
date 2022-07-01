import java.io.File;

public class PartialPathTraversalGood {
    public void example(File dir, File parent) throws IOException {
        if (!dir.getCanonicalPath().startsWith(parent.getCanonicalPath().toPath())) {
            throw new IOException("Invalid directory: " + dir.getCanonicalPath());
        }
    }
}
