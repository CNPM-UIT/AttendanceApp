﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication2.Data;
using WebApplication2.Models;

namespace WebApplication2.DTOs
{
    public class AttendanceDTO
    {
        public int Id { get; set; }

        public int AttendanceStatus { get; set; }

        #region References

        public int StudentId { get; set; }
        public int LessionId { get; set; }

        #endregion

        public static Attendance ToModel(AttendanceDTO attendanceDTO, ApplicationDbContext context)
        {
            return new Attendance
            {
               Id = attendanceDTO.Id,
               AttendanceStatus = (Enums.AttendanceStatus)attendanceDTO.AttendanceStatus,
               StudentId = attendanceDTO.StudentId,
               LessionId = attendanceDTO.LessionId
            };
        }

        public static AttendanceDTO ToDTO(Attendance attendance)
        {
            return new AttendanceDTO
            {
                Id = attendance.Id,
                AttendanceStatus = (int)attendance.AttendanceStatus,
                StudentId = attendance.StudentId,
                LessionId = attendance.LessionId
            };
        }
    }
}
