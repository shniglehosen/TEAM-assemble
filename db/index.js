// methods
const connection = require("./connection");

class DB {
  constructor(connection) {
    this.connection = connection;
  }
  findAllEmployees() {
    return this.connection.promise().query(
        "SELECT * FROM employee;"
      );
  }
  findAllDepartments() {
    return this.connection
      .promise()
      .query("SELECT department.id, department.name FROM department");
  }
  findAllRoles() {
    return this.connection
      .promise()
      .query(
        "SELECT role.id, role.title, department.name AS department, role.salary FROM role LEFT JOIN department on role.department_id = department.id"
      );
  }
  createRole(role) {
    return this.connection.promise().query("INSERT INTO role SET ?", role);
  }
  createEmployee(employee) {
    return this.connection
      .promise()
      .query("INSERT INTO employee SET ?", employee);
  }
  createDepartment(department) {
    return this.connection
      .promise()
      .query("INSERT INTO department SET ?", department);
  }
  updateEmployeeRole(employeeId, roleId) {
    return this.connection
      .promise()
      .query("UPDATE employee SET role_id = ? WHERE id = ?", [
        roleId,
        employeeId,
      ]);
  }
}

module.exports = new DB(connection);
// don't want to update employee managers
// view employees by manager
// view employees by dept
// delete dept roles and employees
// view total utilized budget of dept