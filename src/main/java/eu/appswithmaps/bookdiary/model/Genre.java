package eu.appswithmaps.bookdiary.model;

import java.util.Collection;
import javax.persistence.*;
import lombok.Data;

public @Data class Genre {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "genre_id")
	private int genreId;
	@Column(name = "genre_name_en")
	private String genreNameEn;
	@Column(name = "genre_name_ro")
	private String genreNameRo;
	@Column(name = "genre_name_hu")
	private String genreNameHu;
	
    @ManyToMany(mappedBy = "bookGenres")
    private Collection<Book> genreBooks;
}
