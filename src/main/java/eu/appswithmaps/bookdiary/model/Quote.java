package eu.appswithmaps.bookdiary.model;

import javax.persistence.*;
import lombok.Data;

public @Data class Quote {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "quote_id")
	private Long quoteId;
	@Column(name = "quote_body")
	private String quoteBody;
}
