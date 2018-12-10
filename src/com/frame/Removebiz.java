package com.frame;

import org.springframework.transaction.annotation.Transactional;

public interface Removebiz<K,V> {
	@Transactional
	public void removereal(V v) throws Exception;
}
