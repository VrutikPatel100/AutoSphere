package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.TransactionsEntity;

@Repository
public interface transactionsRepository extends JpaRepository<TransactionsEntity, Integer> {

}
