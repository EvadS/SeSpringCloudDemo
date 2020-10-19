package com.se.cloud.demo.repository;


import com.se.cloud.demo.model.Bucket;
import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BucketRepository extends ReactiveMongoRepository<Bucket, String> {
}