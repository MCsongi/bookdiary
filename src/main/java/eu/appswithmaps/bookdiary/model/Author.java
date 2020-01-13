package eu.appswithmaps.bookdiary.model;

import javax.persistence.*;
import lombok.Data;

public @Data class Author {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "author_id")
	private Long authorId;
	@Column(name = "first_name")
	private String firstName;
	@Column(name = "last_name")
	private String lastName;
	@Column(name = "pseudo_name")
	private String pseudoName;
	@Column(name = "birth_year")
	private int birthYear;
	@Column(name = "death_year")
	private int deathYear;
	
	@ManyToOne
    @JoinColumn(name = "language_id")
	private Language language;
}
