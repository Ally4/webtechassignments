package auca.students.model;

import javax.persistence.Column;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;

import javax.persistence.GenerationType;

import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table(name="students")
public class Student {
 
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    protected int id;
 
    @Column(name="name")
    protected String name;
 
    @Column(name="email")
    protected String email;

	@Column(name="student_id")
    protected String student_id; 
    
    @Column(name="status")
    protected String status; 
    
    
    public Student() {
		super();
	}

	public Student(String name, String email, String student_id, String status) {
		super();
		this.name = name;
		this.email = email;
		this.student_id = student_id;
		this.status = status;
	}

	public Student(int id, String name, String email, String student_id, String status) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.student_id = student_id;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}