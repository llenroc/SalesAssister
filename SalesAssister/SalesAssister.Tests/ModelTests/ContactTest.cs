using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SalesAssister.Models;
using Xunit;

namespace SalesAssister.Tests.ModelTests
{
    public class ContactTest
    {
        [Fact]
        public void GetContactNotesTest()
        {
            //arrange
            var contact = new Contact();
            contact.Notes = "Met with Bob Jones today";

            //act
            var result = contact.Notes;

            //assert
            Assert.Equal(contact.Notes, result);
        }

        [Fact]
        public void GetContactIdTest()
        {
            //arrange
            var contact = new Contact();
            contact.ContactId = 1;

            //act
            var result = contact.ContactId;

            //assert
            Assert.Equal(1, result);
        }

        [Fact]
        public void GetContactDateTest()
        {
            //arrange
            var contact = new Contact();
            contact.Date = new DateTime(1999, 01, 01);

            //act
            var result = contact.Date;

            //assert
            Assert.Equal(contact.Date, result);
        }

        [Fact]
        public void GetClientIdTest()
        {
            //arrange
            var client = new Client();
            client.ClientId = 1;

            //act
            var result = client.ClientId;

            //assert
            Assert.Equal(1, result);
        }

        
    }
}
