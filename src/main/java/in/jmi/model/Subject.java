package in.jmi.model;

import in.jmi.constants.DepartmentName;
import in.jmi.constants.PaperCategory;
import in.jmi.constants.Semester;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "SUBJECT")
public class Subject extends BaseEntity {

	@Column(name = "PAPER_NUMBER",nullable = false)
	@NotEmpty(message="Paper Number: Paper Number can not be empty")
	@NotNull(message="Paper Number: Paper Number can not be left empty")
	private String paperNumber;

	@Column(name = "PAPER_NAME",nullable = false)
	@NotEmpty(message="Paper Name: Paper Name can not be empty")
	private String paperName;

	@Column(name = "PAPER_CATEGORY",nullable = false)
	@NotNull(message="Paper Category: Paper Category can not be left blank")
	private PaperCategory paperCategory;

	@Column(name = "PAPER_SEMESTER",nullable = false)
	@NotNull(message="Paper Semster: Paper Semster can not be left blank")
	private Semester paperSemester;
	
	@Column(name = "DEPARTMENT_NAME",nullable = false)
	@NotNull(message="Department Name: Department Name can not be left blank")
	private DepartmentName departmentName;
	
	@ManyToMany(mappedBy="subjects",cascade=CascadeType.ALL,fetch = FetchType.EAGER)
	private List<Student> students=new ArrayList<Student>();
	
	public Subject() {
	}

	public String getPaperNumber() {
		return paperNumber;
	}

	public void setPaperNumber(String paperNumber) {
		this.paperNumber = paperNumber;
	}

	public String getPaperName() {
		return paperName;
	}

	public void setPaperName(String paperName) {
		this.paperName = paperName;
	}

	public PaperCategory getPaperCategory() {
		return paperCategory;
	}

	public void setPaperCategory(PaperCategory paperCategory) {
		this.paperCategory = paperCategory;
	}

	public Semester getPaperSemester() {
		return paperSemester;
	}

	public void setPaperSemester(Semester paperSemester) {
		this.paperSemester = paperSemester;
	}

	public DepartmentName getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(DepartmentName departmentName) {
		this.departmentName = departmentName;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	@Override
	public String toString() {
		return "Subject [" + paperNumber + ","
				+ paperName + "," + paperCategory
				+ "," + paperSemester + ","
				+ departmentName + "," + students + "]";
	}

	
}
