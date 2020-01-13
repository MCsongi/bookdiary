package eu.appswithmaps.bookdiary.model;

import javax.persistence.*;
import lombok.Data;

public @Data class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "book_id")
	private Long bookId;
	@Column(name = "title")
	private String title;
	@Column(name = "original_title")
	private String originalTitle;
	@Column(name = "release_year")
	private int releaseYear;
	@Column(name = "start_year")
	private int startYear;
	@Column(name = "end_year")
	private int endYear;
	@Column(name = "translation")
	private boolean translation;
}
