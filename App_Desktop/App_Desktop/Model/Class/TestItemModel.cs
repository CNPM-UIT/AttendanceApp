﻿using Prism.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_Desktop.Model.Class
{
    public class TestItemModel
    {
        private int id;
        private String name;
        private DateTime? createdDateTime;
        private DateTime? testedDateTime;
        private TimeSpan duration;
        public DelegateCommand StartCommand { get; private set; }
        public DelegateCommand ViewScoreCommand { get; private set; }

        public TestItemModel(int id, string name, DateTime createdDateTime, DateTime? testedDateTime, TimeSpan duration)
        {
            this.id = id;
            this.name = name;
            this.createdDateTime = createdDateTime;
            this.testedDateTime = testedDateTime;
            this.StartCommand = new DelegateCommand(StartTest, CanStart);
            this.ViewScoreCommand = new DelegateCommand(ViewScore, CanViewScore);
            this.duration = duration;
        }

        private void StartTest()
        {

        }

        private void ViewScore()
        {

        }
        public DateTime? TestedDateTime
        {
            get => testedDateTime;
            set => testedDateTime = value;
        }

        public DateTime? CreatedDateTime
        {
            get => createdDateTime;
            set => createdDateTime = value;
        }

        public string Name
        {
            get => name;
            set => name = value;
        }

        public int Id
        {
            get => id;
            set => id = value;
        }

        public TimeSpan Duration
        {
            get => duration;
            set => duration = value;
        }

        public bool CanStart()
        {
            return this.testedDateTime == null;
        }

        public bool CanViewScore()
        {
            return this.testedDateTime != null;
        }

    }
}
