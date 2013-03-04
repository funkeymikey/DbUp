using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace DbUp.Tests
{
    [TestClass]
    public class DbVersionTests
    {
        [TestMethod]
        public void CompareTo_SimpleNumber()
        {
            DbVersion lowVersion = new DbVersion(0, 0, 0, 0);
            DbVersion highVersion = new DbVersion(0, 0, 0, 1);

            Assert.IsTrue(lowVersion.CompareTo(highVersion) < 0);
        }

        [TestMethod]
        public void CompareTo_NormalNumber()
        {
            DbVersion lowVersion = new DbVersion(0, 0, 0, 1);
            DbVersion highVersion = new DbVersion(0, 0, 0, 10);

            Assert.IsTrue(lowVersion.CompareTo(highVersion) < 0);
        }

        [TestMethod]
        public void CompareTo_HigherNumber()
        {
            DbVersion lowVersion = new DbVersion(0, 0, 0, 2);
            DbVersion highVersion = new DbVersion(0, 0, 0, 10);

            Assert.IsTrue(lowVersion.CompareTo(highVersion) < 0);
        }

        [TestMethod]
        public void CompareTo_SimpleString()
        {
            DbVersion lowDbVersion = new DbVersion(0, 0, 0, 0);
            DbVersion highDbVersion = new DbVersion(0, 0, 0, 1);

            Version lowVersion = new Version(lowDbVersion.GetVersionString());
            Version highVersion = new Version(highDbVersion.GetVersionString());

            Assert.IsTrue(lowVersion.CompareTo(highVersion) < 0);
        }

        [TestMethod]
        public void CompareTo_NormalString()
        {
            DbVersion lowDbVersion = new DbVersion(0, 0, 0, 1);
            DbVersion highDbVersion = new DbVersion(0, 0, 0, 10);

            Version lowVersion = new Version(lowDbVersion.GetVersionString());
            Version highVersion = new Version(highDbVersion.GetVersionString());

            Assert.IsTrue(lowVersion.CompareTo(highVersion) < 0);
        }

        [TestMethod]
        public void CompareTo_HigherString()
        {
            DbVersion lowDbVersion = new DbVersion(0, 0, 0, 2);
            DbVersion highDbVersion = new DbVersion(0, 0, 0, 10);

            Version lowVersion = new Version(lowDbVersion.GetVersionString());
            Version highVersion = new Version(highDbVersion.GetVersionString());

            Assert.IsTrue(lowVersion.CompareTo(highVersion) < 0);
        }

        
    }
}
