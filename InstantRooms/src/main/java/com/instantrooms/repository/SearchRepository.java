package com.instantrooms.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.instantrooms.entity.Room;
import com.instantrooms.entity.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SearchRepository extends JpaRepository<Room, Long> {
	
	
	    @Transactional
	    @Modifying
	    @Query("SELECT r FROM Room r WHERE r.city LIKE CONCAT('%',:city, '%')")
	    List<Room> searchRoomsByName(String city);

	    
	    @Query("SELECT r FROM Room r WHERE r.city = :city ORDER BY r.priceWithOffers ASC")
	    List<Room> OrderBypriceAsc(String city);
	    
	    @Query("SELECT r FROM Room r WHERE r.city = :city ORDER BY r.priceWithOffers DESC")
	    List<Room> OrderBypriceDesc(String city);
	    
	    @Query("SELECT r FROM Room r WHERE r.city = :city ORDER BY r.starRating DESC")
	    List<Room> OrderBypriceStar(String city);
	    
	   // @Query("SELECT r FROM Room r WHERE r.city = :filterCity AND r.facility LIKE '%:fac1%' ORDER BY r.priceWithOffers ASC")
	    @Query(value = "select * from room r where r.city=:filterCity  and r.facility like %:fac1% ORDER BY price_with_offers", nativeQuery = true)
	    List<Room> applyfilters(String filterCity, String fac1);
	    
	    @Query(value = "select * from room r where r.city=:filterCity  and r.facility like %:fac1% and r.facility like %:fac2% ORDER BY price_with_offers", nativeQuery = true)
	    List<Room> applyfilters(String filterCity, String fac1, String fac2);
	    
	    @Query(value = "select * from room r where r.city=:filterCity and r.facility like %:fac1% and r.facility like %:fac2% and r.facility like %:fac3% ORDER BY price_with_offers", nativeQuery = true)
	    List<Room> applyfilters(String filterCity, String fac1, String fac2, String fac3);
	    
	    @Query(value = "select * from room r where r.city=:filterCity  and r.facility like %:fac1% and r.facility like %:fac2% and r.facility like %:fac3% and r.facility like %:fac4% ORDER BY price_with_offers", nativeQuery = true)
	    List<Room> applyfilters(String filterCity, String fac1, String fac2, String fac3, String fac4);
	    
	    @Query(value = "select * from room r where r.city=:filterCity  and r.facility like %:fac1% and r.facility like %:fac2% and r.facility like %:fac3% and r.facility like %:fac4% and r.facility like %:fac5% ORDER BY price_with_offers", nativeQuery = true)
	    List<Room> applyfilters(String filterCity, String fac1, String fac2, String fac3, String fac4, String fac5);
	    
	    @Query(value = "select * from room r where r.city=:filterCity  and r.facility like %:fac1% and r.facility like %:fac2% and r.facility like %:fac3% and r.facility like %:fac4% and r.facility like %:fac5% and r.facility like %:fac6% ORDER BY price_with_offers", nativeQuery = true)
	    List<Room> applyfilters(String filterCity, String fac1, String fac2, String fac3, String fac4, String fac5, String fac6);
	    
	    @Query(value = "select * from room r where r.city=:filterCity  and r.facility like %:fac1% and r.facility like %:fac2% and r.facility like %:fac3% and r.facility like %:fac4% and r.facility like %:fac5% and r.facility like %:fac6% and r.facility like %:fac7% ORDER BY price_with_offers", nativeQuery = true)
	    List<Room> applyfilters(String filterCity, String fac1, String fac2, String fac3, String fac4, String fac5, String fac6, String fac7);
	 
	    @Query(value = "select * from room r where r.city=:filterCity  and r.facility like %:fac1% and r.facility like %:fac2% and r.facility like %:fac3% and r.facility like %:fac4% and r.facility like %:fac5% and r.facility like %:fac6% and r.facility like %:fac7% and r.facility like %:fac8% ORDER BY price_with_offers", nativeQuery = true)
	    List<Room> applyfilters(String filterCity, String fac1, String fac2, String fac3, String fac4, String fac5, String fac6, String fac7, String fac8);
	    
	    @Query(value = "select * from room r where r.city=:filterCity  and r.facility like %:fac1% and r.facility like %:fac2% and r.facility like %:fac3% and r.facility like %:fac4% and r.facility like %:fac5% and r.facility like %:fac6% and r.facility like %:fac7% and r.facility like %:fac8% and r.facility like %:fac9% ORDER BY price_with_offers", nativeQuery = true)
	    List<Room> applyfilters(String filterCity, String fac1, String fac2, String fac3, String fac4, String fac5, String fac6, String fac7, String fac8, String fac9);

	    
	    @Query("SELECT r FROM Room r WHERE r.id = :hotelid") 
		List<Room> searchById(Long hotelid);

	    @Query("SELECT r FROM Room r WHERE r.city = :city and r.priceWithOffers <= 1000")
		List<Room> under1k(String city);
	    
	    @Query("SELECT r FROM Room r WHERE r.city = :city and r.priceWithOffers <= 2000")
		List<Room> under2k(String city);

	    @Query("SELECT r FROM Room r WHERE r.city = :city and r.priceWithOffers > 2000")
	  	List<Room> above2k(String city);

	    @Query("SELECT r FROM Room r WHERE r.id = :id")
	    List<Room> roomdetail(Long id);


}

