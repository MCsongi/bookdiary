package eu.appswithmaps.bookdiary.model;

import java.util.Collection;
import javax.persistence.*;
import lombok.Data;

public @Data class Language {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "language_id")
	private int languageId;
	@Column(name = "language_name")
	private String languageName;
	@Column(name = "native_name")
	private String nativeName;
	@Column(name = "iso_code")
	private char isoCode;
	
	@OneToMany(mappedBy = "language", fetch = FetchType.EAGER)
	private Collection<Author> authors;
}
