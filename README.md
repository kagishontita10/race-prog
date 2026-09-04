race-prog

RaceDay - South African Road Events Management System
PROG6212 PoE Part 1 - Planning & Database Design

 1. System Overview
RaceDay is a full-stack, cloud-aware, API-driven web platform designed for the South African road running, walking, and cycling community.

South Africa has a rich culture of road events like the Comrades Marathon, Cape Town Cycle Tour, and Soweto Marathon, but many are still managed via paper-based registration and spreadsheets. RaceDay solves this by providing a centralized system where Event Organisers can create and manage events, categories, and results, while Participants can browse events, enter, track their performance history, and prepare for race day with live weather and route information.

This is Part 1 of the project focusing on the data model planning, API endpoint planning, and SQL database implementation.

2. User Roles

The system has two main roles:

a) Organiser
The event creator and manager. Can:
- Create, update, and delete events
- Define race categories for each event (e.g., 5km, 21km, 42km, 109km Cycle)
- Manage participant enrolments
- Capture and publish race results
- View all participants for their events

 b) Participant
The athlete / public user. Can:
- Browse upcoming events
- Register / enrol for an event category
- View personal performance history and results
- View event details including route and weather information
- Manage their user profile


 3. Database Design - ERD

Entities (8 Entities):
1.  Users- Stores both Organisers and Participants with Role field
2.  Events - Main event info (Title, Date, Location, Description)
3.  Categories - Sub-races within an event (e.g., 10km, 21km) with distance and entry fee
4.  Enrolments - Many-to-Many link between Users (Participants) and Categories
5.  Results - Finish time and position for each enrolment
6. eventRoutes - Route map URL and elevation data for an Event
7.  Weather - Cached weather forecast for an Event date


4.Key Relationships:
- Users (Organiser) 1-to-Many Events
- Events 1-to-Many Categories, Routes, Weather
- Categories 1-to-Many Enrolments
- Users (Participant) 1-to-Many Enrolments
- Enrolments 1-to-1 Results




5. SQL Database Script



The script:
- Creates database `Race`
- Contains `CREATE TABLE` statements for all 8 entities with PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, and DEFAULT constraints
- Contains `INSERT` statements with realistic sample data:
    - 2 Organisers (Thabang Nkosi, comi nzola)
    - 2 Participants (sama, kamo)
    - 3 Events (Tembisa fun run, soweto marathon , pretoria cycle race)
    - Categories for each event
    - Sample Enrolments and Results
- The script is idempotent and runs without errors on a clean SQL Server instance (Tested in SSMS 20)



6. API Endpoint Plan

A full endpoint plan covering Authentication, User Profile, Events, Categories, Enrolments

Summary table format: HTTP Method | Route | Description | Role Required | Request Body | Expected Response




 7. Video Walkthrough

An unlisted YouTube video walkthrough is submitted where I explain:
- ERD design decisions and cardinality
- Endpoint plan choices
- Live execution of the SQL script in SSMS

YouTube Link (Unlisted): [https://youtu.be/sCD0HtRoA1M?si=d4-omzj3FsQxWPp9]




7. Submission Info

Module: PROG6212
  GitHub Repository: [https://github.com/kagishontita10/race-prog]
  YouTube Video: [Link Above]
