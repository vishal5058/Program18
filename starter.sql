CREATE OR REPLACE FUNCTION count_students (
    p_departmentid IN NUMBER
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student
    WHERE DepartmentID = p_departmentid;

    RETURN v_count;
END;
/
