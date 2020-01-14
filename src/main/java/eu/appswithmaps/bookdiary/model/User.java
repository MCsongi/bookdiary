package eu.appswithmaps.bookdiary.model;

import java.time.LocalDate;
import java.util.Collection;
import javax.persistence.*;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Data;

@Entity
@Table(name = "user")
public @Data class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private Long userId;
	@Column(name = "first_name")
	private String firstName;
	@Column(name = "last_name")
	private String lastName;
	@Column(name = "username")
	private String username;
	@Column(name = "password")
	private String password;
	@Column(name = "email")
	private String email;
	@Column(name = "birth_date")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate birthDate;
	
	@Transient
    private String passwordConfirm;
	
	@ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;
	
    @OneToOne(mappedBy = "userAuthorDetails", cascade = CascadeType.ALL)
    private AuthorDetails authorDetails;
	
    @OneToOne(mappedBy = "userBookDetails", cascade = CascadeType.ALL)
    private BookDetails bookDetails;
    
    @ManyToMany
    @JoinTable(name = "user_book",
            joinColumns = {@JoinColumn(name = "user_id")},
            inverseJoinColumns = {@JoinColumn(name = "book_id")})
    private Collection<Book> userBooks;
}
