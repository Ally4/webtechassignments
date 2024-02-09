package auca.students.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import auca.students.dao.StudentDao;
import auca.students.model.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/")
public class StudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1;
    private StudentDao studentDao;

    public void init() {
    	studentDao = new StudentDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new-student":
                    showNewForm(request, response);
                    break;
                case "/insert-student":
                    insertStudent(request, response);
                    break;
                case "/delete-student":
                    deleteStudent(request, response);
                    break;
                case "/edit-student":
                    showEditForm(request, response);
                    break;
                case "/update-student":
                    updateStudent(request, response);
                    break;
                default:
                    listStudent(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listStudent(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < Student > listStudent = studentDao.getAllStudents();
        request.setAttribute("listStudent", listStudent);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewOfStudents.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewOfStudents.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Student existingStudent = studentDao.getStudent(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewOfStudents.jsp");
        request.setAttribute("Student", existingStudent);
        dispatcher.forward(request, response);

    }

    private void insertStudent(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String student_id = request.getParameter("student_id");
        String status = request.getParameter("status");
        Student newStudent = new Student(name, email, student_id, status);
        studentDao.saveStudent(newStudent);
        response.sendRedirect("view-students");
    }

    private void updateStudent(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String student_id = request.getParameter("student_id");
        String status = request.getParameter("status");

        Student student = new Student(id, name, email, student_id, status);
        studentDao.updateStudent(student);
        response.sendRedirect("list");
    }

    private void deleteStudent(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        studentDao.deleteStudent(id);
        response.sendRedirect("list");
    }
}