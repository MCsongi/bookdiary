package eu.appswithmaps.bookdiary.model;

import java.sql.Blob;
import javax.persistence.*;
import lombok.Data;

public @Data class BookDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "book_details_id")
	private Long bookDetailsId;
	@Column(name = "cover")
	private Blob cover;
	@Column(name = "number_of_pages")
	private int numberOfPages;
	@Column(name = "plot")
	private String plot;
	@Column(name = "characters")
	private String characters;
	@Column(name = "read_year")
	private int readYear;
	@Column(name = "read_times")
	private int readTimes;
}
