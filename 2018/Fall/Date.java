public class Date
{
  private int day;
  private int month;
  private int year;
  int[] monthLengths = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  String[] monthNames = {"January", "Febuarary", "March", "April", "May",
"June", "July", "August", "September", "October", "November", "December"};


  public Date (int inputyear, int inputmonth, int inputday) {
    if (inputyear > 0) {
      year = inputyear;

      //check 31 day month
      if ((inputmonth == 1) || (inputmonth == 3) || (inputmonth == 5) ||
      (inputmonth == 7) || (inputmonth == 8) || (inputmonth == 10)
       || (inputmonth == 12))

      {
        month = inputmonth;
        if (inputday <= 31)
        {
          day = inputday;
        }
        else
        {
          return "ERROR";
        }
      }

      // check 30 day month
      else if ((inputmonth == 4) || (inputmonth == 6) || (inputmonth == 9)
       || (inputmonth == 11))
      {
        month = inputmonth;
        if (inputday <= 30)
        {
          day = inputday;
        }
        else
        {
          return "ERROR";
        }
      }

      // maybe check if leap year and check feb
      else if (inputmonth == 2)
      {
        month = inputmonth;
        if (inputday <= 29)
        {
          day = inputday;
        }
        else
        {
          return "ERROR";
        }
      }
      else
      {
        return "ERROR";
      }


    /*
    month = inputmonth;
    if (inputday <= )
    day = inputday;
    month = inputmonth;
    */
    }
  }

  public int getDay()
  {
    return day;
  }

  public int getMonth()
  {
    return month;
  }

  public int getYear()
  {
    return year;
  }

  /*
  This method finds and returns the number of days in magnitude for the given
  date.
  */
  public int difference(Date d)
  {
    int diff = 365 * (year - d.getYear()) + (day - d.getDay());
    int days = 0;
    if (d.getMonth() > month)
    {
      for (int i = month; i < d.getMonth(); i++)
      {
        days -= monthLengths[i];
      }
    }
    else if (d.getMonth() < month)
    {
      for (int i = d.getMonth(); i < month; i++)
      {
        days += monthLengths[i];
      }
    }
    diff += days;
    return Math.abs(diff);
  }

  /*
  This method finds the new date after incrementing the date by the input
  number.
  */
  public void incrementDate(int days)
  {
    int addedDays = day + days - 1;
    int monthLen = monthLengths[month-1];
    while ((addedDays) > monthLen)
    {
      addedDays -= monthLen;
      month++;
      year = (month > 12) ? year + 1 : year;
      month = (month > 12) ? month - 12 : month;
      monthLen = monthLengths[month-1];
    }
    day = addedDays;
  }

  /*
  This method returns the date in a nice string format.
  */
  public String toString()
  {
    return year + "-" + month + "-" + day;
  }
  public String toString(String type)
  {
    if ( type == "word")
    {
      return monthNames[month-1] + " " + day + ", " + year;
    }
    else if ( type == "us")
    {
      return month + "/" + day + "/" + year;
    }
    else if ( type == "uk")
    {
      return day + "/" + month + "/" + year;
    }
    else
    {
      return year + "-" + month + "-" + day;
    }
  }
}











}
