CREATE TABLE "JobTitle" (
    "emp_no" int   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    "ID" SERIAL   NOT NULL,
    CONSTRAINT "pk_JobTitle" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "JobSalary" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    "ID" SERIAL   NOT NULL,
    CONSTRAINT "pk_JobSalary" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    "ID" SERIAL   NOT NULL,
    CONSTRAINT "pk_Manager" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "EmploymentStatus" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    "ID" SERIAL   NOT NULL,
    CONSTRAINT "pk_EmploymentStatus" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

ALTER TABLE "JobTitle" ADD CONSTRAINT "fk_JobTitle_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "JobSalary" ADD CONSTRAINT "fk_JobSalary_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Manager" ADD CONSTRAINT "fk_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Manager" ADD CONSTRAINT "fk_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "EmploymentStatus" ADD CONSTRAINT "fk_EmploymentStatus_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "EmploymentStatus" ADD CONSTRAINT "fk_EmploymentStatus_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");