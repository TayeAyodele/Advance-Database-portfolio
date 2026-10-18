// Portfolio 4: NoSQL and Advanced Data Models
// Sample MongoDB queries for the University Student Result Portal
// These examples assume the JSON document is stored in a
// MongoDB collection named studentResults.

// 1. Insert a student result document
db.studentResults.insertOne({
  student: {
    studentID: 1,
    firstName: "Ada",
    lastName: "Okafor",
    email: "ada.okafor@example.com",
    program: "Master of Information Technology"
  },
  academicSession: "2026/2027",
  semester: "First Semester",
  courseRegistrations: [
    {
      registrationID: 1,
      course: {
        courseID: 1,
        courseCode: "MIT8103",
        courseTitle: "Advanced Database Systems",
        creditUnit: 3
      },
      result: {
        score: 75,
        grade: "A",
        gradePoint: 5.0,
        remark: "Excellent"
      }
    }
  ]
});

// 2. Find a student by student ID
db.studentResults.find({
  "student.studentID": 1
});

// 3. Find documents containing a particular course
db.studentResults.find({
  "courseRegistrations.course.courseCode": "MIT8103"
});

// 4. Find students with a score of at least 70
db.studentResults.find({
  "courseRegistrations.result.score": { $gte: 70 }
});

// 5. Update a student's result remark
db.studentResults.updateOne(
  {
    "student.studentID": 1,
    "courseRegistrations.registrationID": 1
  },
  {
    $set: {
      "courseRegistrations.$.result.remark": "Excellent"
    }
  }
);
