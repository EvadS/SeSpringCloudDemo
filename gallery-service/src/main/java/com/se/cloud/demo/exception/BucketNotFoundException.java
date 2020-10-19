package com.se.cloud.demo.exception;

public class BucketNotFoundException extends RuntimeException {

    public BucketNotFoundException(String bucketId) {
        super("Bucket not found with id " + bucketId);
    }
}