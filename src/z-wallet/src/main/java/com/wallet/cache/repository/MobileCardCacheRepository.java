package com.wallet.cache.repository;

import com.wallet.cache.entity.MobileCardEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MobileCardCacheRepository extends CrudRepository<MobileCardEntity, Long> {
}
