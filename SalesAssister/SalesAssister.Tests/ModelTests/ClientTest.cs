using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SalesAssister.Models;
using Xunit;

namespace SalesAssister.Tests
{
    public class ClientTest
    {
        [Fact]
        public void GetClientNameTest()
        {
            //arrange
            var client = new Client();
            client.Name = "Bob Jones";

            //act
            var result = client.Name;

            //assert
            Assert.Equal("Bob Jones", result);
        }

        [Fact]
        public void GetClientEmailTest()
        {
            //arrange
            var client = new Client();
            client.Email = "Bob@email.com";

            //act
            var result = client.Email;

            //assert
            Assert.Equal("Bob@email.com", result);
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

        [Fact]
        public void GetClientPhoneTest()
        {
            //arrange
            var client = new Client();
            client.Phone = "503-635-6779";

            //act
            var result = client.Phone;

            //assert
            Assert.Equal("503-635-6779", result);
        }
    }
}
