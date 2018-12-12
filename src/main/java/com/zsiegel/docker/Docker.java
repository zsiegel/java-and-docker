package com.zsiegel.docker;

public class Docker {

    public static void main(String[] args) {

        Runtime runtime = Runtime.getRuntime();
        int processors = runtime.availableProcessors();
        long maxMemory = runtime.maxMemory();

        System.out.format("Number of processors: %d\n", processors);
        System.out.format("Max memory: %d bytes\n", maxMemory);
    }
}
