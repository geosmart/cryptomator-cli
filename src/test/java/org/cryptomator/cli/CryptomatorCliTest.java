package org.cryptomator.cli;

import org.junit.Test;

import java.io.IOException;

public class CryptomatorCliTest {

    @Test
    public void main() throws IOException {
        String[] args = new String[]{
            "--bind",
            "127.0.0.1",
            "--port",
            "18091",
            "--vault",
            "nasVault=/mnt/nasVault",
            "--password",
            "nasVault=demoPwd",
        };
        CryptomatorCli.main(args);
    }
}
