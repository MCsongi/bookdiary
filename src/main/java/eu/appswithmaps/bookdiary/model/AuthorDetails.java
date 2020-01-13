package eu.appswithmaps.bookdiary.model;

import java.sql.Blob;
import javax.persistence.*;
import lombok.Data;

public @Data class AuthorDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "author_details_id")
	private Long authorDetailsId;
	@Column(name = "portrait")
	private Blob portrait;
	@Column(name = "about")
	private String about;
}
