package eu.appswithmaps.bookdiary.model;

import java.util.Collection;
import javax.persistence.*;
import lombok.Data;

public @Data class Location {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "location_id")
	private Long locationId;
	@Column(name = "continent")
	private String continent;
	@Column(name = "country")
	private String country;
	@Column(name = "city")
	private String city;
	
    @ManyToMany(mappedBy = "bookLocations")
    private Collection<Book> locationBooks;
}
