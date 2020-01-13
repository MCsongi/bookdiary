package eu.appswithmaps.bookdiary.model;

import java.util.Collection;
import javax.persistence.*;
import lombok.Data;

@Entity
@Table(name = "role")
public @Data class Role {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "role_id")
	private Long roleId;
	@Column(name = "role_name")
	private String roleName;
	
	@OneToMany(mappedBy = "role", fetch = FetchType.EAGER)
	private Collection<User> users;
}
