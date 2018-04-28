#include <limits.h>
#include "gtest/gtest.h"
#include "pmaths.h"
namespace
{
 TEST(Addition, CanAddTwoNumbers)
  {
  EXPECT_TRUE(add(2, 2) == 4);
  }
 TEST(Subtraction, CanSubTwoNumbers)
  {
  EXPECT_TRUE(subtract(2, 2) == 0);
  }
 TEST(Multyply, CanAddMultipyNumbers)
  {
  EXPECT_TRUE(multiply(2, 2) == 4);
  }
 TEST(Devide, CanAddDivideNumbers)
  {
  EXPECT_TRUE(divide(2, 2) == 1);
  }
}
