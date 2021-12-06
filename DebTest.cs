using System;
using Xunit;

namespace DebApp
{
    public class DebTest
    {
        [Fact]
        public void PassingTest()
        {
            Assert.Equal(7, Add(5, 2));
        }

        [Fact]
        public void FailingTest() // Edit data below to cause test failure
        {
            Assert.Equal(11, Add(7, 4));
        }

        int Add(int x, int y)
        {
            return x + y;
        }

        [Theory] //Theory is that all numbers are odd - change data to cause test failure
        [InlineData(3)]
        [InlineData(5)]
        [InlineData(7)]
        public void Theory(int value)
        {
            Assert.True(IsOdd(value));
        }

        bool IsOdd(int value)
        {
            return value % 2 == 1;
        }
    }
}
