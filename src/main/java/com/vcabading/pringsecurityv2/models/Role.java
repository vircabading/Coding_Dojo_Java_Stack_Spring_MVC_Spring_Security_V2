package com.vcabading.pringsecurityv2.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**	******************************************************
 * 	ROLE CLASS
 * 	******************************************************
 */

@Entity
@Table(name="roles")
public class Role {

	//	**** FIELDS **************************************
	
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    
      // **** Many-To-Many Relationship ********************
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "users_roles", 
        joinColumns = @JoinColumn(name = "role_id"), 
        inverseJoinColumns = @JoinColumn(name = "user_id")
    )
    private List<User> users;
    
    //	**** CONSTRUCTORS ********************************
    
    public Role() {
    }
    
    //	**** GETTERS AND SETTERS *************************

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
}


