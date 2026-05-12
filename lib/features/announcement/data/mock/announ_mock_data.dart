import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';

final List<Announcement> mockAnnouncements = [
  Announcement(
    id: '1',
    title: 'Mid-Term Exam Schedule Published',
    body:
        'Dear Students,\n\nWe would like to inform you that the mid-term examination schedule for the current semester has been officially published on the university portal.\n\nExaminations will be held from December 15 to December 22, 2024. All students are required to review their individual schedules carefully.\n\nPlease ensure you:\n• Arrive at least 15 minutes before the exam begins\n• Bring your valid university ID card\n• Carry all required stationery\n• Turn off mobile devices during the exam\n\nStudents with special accommodations should contact the examination office at least 3 days before their exam date.\n\nFor any inquiries, please don\'t hesitate to reach out through the student portal or visit the examination office during working hours (9 AM – 3 PM).\n\nBest regards,\nDr. Mohamed Hassan\nHead of Examination Committee',
    doctorName: 'Dr. Mohamed Hassan',
    subjectName: 'Data Structures',
    subjectCode: 'CS301',
    type: AnnouncementType.normal,
    target: AnnouncementTarget.all,
    priority: AnnouncementPriority.urgent,
    createdAt: DateTime.now().subtract(const Duration(hours: 2)),
    isRead: false,
    isFromAdmin: false,
  ),
  Announcement(
    id: '2',
    title: 'Lecture 4 Notes — Binary Search Trees',
    body:
        'Dear Students,\n\nI\'m pleased to announce that the lecture notes for Lecture 4 on "Binary Search Trees" are now available for download on the course portal.\n\nTopics covered in Lecture 4:\n• BST insertion and deletion operations\n• Tree traversal algorithms (In-order, Pre-order, Post-order)\n• Time complexity analysis\n• Practical coding examples in Python\n\nPlease review the material before our next session and come prepared with questions. The assignment related to this topic will be posted by the end of the week.\n\nSee you in class!\n\nBest regards,\nDr. Ahmed Tarek\nComputer Science Department',
    doctorName: 'Dr. Ahmed Tarek',
    subjectName: 'Algorithms',
    subjectCode: 'CS302',
    type: AnnouncementType.materialFile,
    target: AnnouncementTarget.course,
    priority: AnnouncementPriority.normal,
    createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    isRead: true,
    attachments: [
      AnnounAttachment(
        name: 'Lecture_4_BST_Notes.pdf',
        url: '/materials/lec4_bst.pdf',
        sizeMB: 2.4,
        fileType: AttachmentFileType.pdf,
      ),
      AnnounAttachment(
        name: 'BST_Code_Examples.zip',
        url: '/materials/bst_examples.zip',
        sizeMB: 0.3,
        fileType: AttachmentFileType.other,
      ),
    ],
    isFromAdmin: false,
  ),
  Announcement(
    id: '3',
    title: 'Assignment 3: Graph Algorithms — Due Dec 10',
    body:
        'Dear Students,\n\nAssignment 3 on Graph Algorithms has been officially released. This assignment is worth 15% of your final grade.\n\nAssignment Details:\n• Topic: Graph Traversal and Shortest Path Algorithms\n• Submission Deadline: December 10, 2024 at 11:59 PM\n• Submission Format: PDF report + source code (.zip)\n\nThe assignment covers:\n1. Breadth-First Search (BFS) implementation\n2. Depth-First Search (DFS) implementation\n3. Dijkstra\'s shortest path algorithm\n4. Analysis and comparison of the algorithms\n\nImportant Notes:\n• No late submissions will be accepted without prior approval\n• Academic integrity policy applies strictly\n• Group submissions are NOT allowed\n\nGood luck!\n\nBest regards,\nDr. Sara Khalil\nComputer Science Department',
    doctorName: 'Dr. Sara Khalil',
    subjectName: 'Advanced Algorithms',
    subjectCode: 'CS401',
    type: AnnouncementType.assignment,
    target: AnnouncementTarget.level,
    priority: AnnouncementPriority.important,
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    isRead: false,
    attachments: [
      AnnounAttachment(
        name: 'Assignment_3_Requirements.pdf',
        url: '/assignments/a3.pdf',
        sizeMB: 1.8,
        fileType: AttachmentFileType.pdf,
      ),
    ],
    isFromAdmin: false,
  ),
  Announcement(
    id: '4',
    title: 'University Holiday Notice — Dec 12',
    body:
        'Dear All,\n\nWe wish to inform all students, faculty, and staff that the university will be closed on December 12, 2024 in observance of the National Day holiday.\n\nAll academic activities, including lectures, lab sessions, and office hours, are suspended for the day.\n\nRegular university operations will resume on December 13, 2024.\n\nWe wish everyone a joyful and safe holiday.\n\nWarm regards,\nUniversity Administration\nERU — Egyptian Russian University',
    doctorName: 'University Admin',
    subjectName: 'Administration',
    subjectCode: 'ADM',
    type: AnnouncementType.normal,
    target: AnnouncementTarget.all,
    priority: AnnouncementPriority.important,
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    isRead: true,
    isFromAdmin: true,
  ),
  Announcement(
    id: '5',
    title: 'Lab Session Rescheduled — Room B-204',
    body:
        'Dear Students,\n\nPlease note that the lab session originally scheduled for Tuesday, December 5th has been rescheduled to Wednesday, December 6th at the same time (2:00 PM – 4:00 PM) in Lab B-204.\n\nThis change is due to a maintenance schedule in the original lab room.\n\nPlease update your schedules accordingly. Apologies for any inconvenience caused.\n\nBest regards,\nDr. Omar Fathy\nOperating Systems Department',
    doctorName: 'Dr. Omar Fathy',
    subjectName: 'Operating Systems',
    subjectCode: 'CS303',
    type: AnnouncementType.normal,
    target: AnnouncementTarget.course,
    priority: AnnouncementPriority.normal,
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    isRead: false,
    isFromAdmin: false,
  ),
  Announcement(
    id: '6',
    title: 'Spring 2025 Course Registration Now Open',
    body:
        'Dear Students,\n\nCourse registration for the Spring 2025 semester is now open through the student portal.\n\nRegistration Period: December 8 – December 20, 2024.\n\nImportant Guidelines:\n• Review the course catalog and prerequisite requirements carefully\n• Consult your academic advisor before registering\n• Maximum credit hours per semester: 21\n• Minimum credit hours per semester: 12 (full-time students)\n\nStudents with outstanding fees or academic holds will not be able to register until resolved.\n\nTechnical support: support@eru.edu.eg\n\nBest regards,\nAcademic Affairs Office\nERU — Egyptian Russian University',
    doctorName: 'Academic Affairs',
    subjectName: 'Administration',
    subjectCode: 'ADM',
    type: AnnouncementType.normal,
    target: AnnouncementTarget.all,
    priority: AnnouncementPriority.important,
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    isRead: true,
    isFromAdmin: true,
  ),
];

List<Announcement> get myMockAnnouncements =>
    mockAnnouncements.where((a) => !a.isFromAdmin).toList();

List<Announcement> get adminMockAnnouncements =>
    mockAnnouncements.where((a) => a.isFromAdmin).toList();
