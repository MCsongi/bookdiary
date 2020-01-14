package eu.appswithmaps.bookdiary.model;

import java.util.Collection;
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

	@ManyToOne
	@JoinColumn(name = "language_id")
	private Language bookLanguage;

	@OneToMany(mappedBy = "book", fetch = FetchType.EAGER)
	private Collection<BookDetails> bookDetails;
	
    @ManyToMany
    @JoinTable(name = "book_author",
            joinColumns = {@JoinColumn(name = "book_id")},
            inverseJoinColumns = {@JoinColumn(name = "author_id")})
    private Collection<Author> bookAuthors;
    
    @ManyToMany
    @JoinTable(name = "book_genre",
            joinColumns = {@JoinColumn(name = "book_id")},
            inverseJoinColumns = {@JoinColumn(name = "genre_id")})
    private Collection<Genre> bookGenres;
    
    @ManyToMany
    @JoinTable(name = "book_location",
            joinColumns = {@JoinColumn(name = "book_id")},
            inverseJoinColumns = {@JoinColumn(name = "location_id")})
    private Collection<Location> bookLocations;
    
    @ManyToMany(mappedBy = "userBooks")
    private Collection<User> bookUsers;
}
