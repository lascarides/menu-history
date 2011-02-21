require 'test_helper'

class OriginalMenuTest < ActiveSupport::TestCase

  # Original Date guesser/parser tests
  # 
  # "3/2/08" , Date.civil(1908, 03, 02)
  # "1899/02/08" , Date.civil(1899, 02, 08)
  # "[1859/07/??]" , nil
  # "[1859/07/??]" , nil
  # "IIIIIIIIII1862/10/31" , Date.civil(1862, 10, 31)
  # "1866/10/18" , Date.civil(1866, 10, 18)
  # "2/25/08" , Date.civil(1908, 02, 25)
  # "4/15/08" , Date.civil(1908, 04, 15)
  # "1985-0051" , nil
  # "1987/07/20 & 1987/09/28" , Date.civil(1987, 07, 20)
  # "1980/00/00 BOX A -CH" , Date.civil(1980, 01, 01)
  # "1980/00/00 BOX O - P" , Date.civil(1980, 01, 01)
  # "1980/00/00 (BOX O-P)" , Date.civil(1980, 01, 01)
  # "1911/00/00" , Date.civil(1911, 01, 01)
  # "1912./11/19" , Date.civil(1912, 11, 19)
  # "11/20/12" , Date.civil(1912, 11, 20)
  # "8/24/13" , Date.civil(1913, 08, 24)
  # "[1913/08/25]" , Date.civil(1913, 08, 25)
  # "11/27/13" , Date.civil(1913, 11, 27)
  # "UNDATED" , nil
  # "November 11, (1983)?" , nil
  # "December 1969-January1970" , nil
  # "May 1974 or later" , nil
  # "Spring and Summer, 2007" , nil
  # "Printemps 2000" , nil
  # "Saturday; Thursday (10/15/1959)" , nil
  # "various dates; undated c. 1977" , nil
  # "31.Dec. 1906 written in Mrs. Buttolph's handwriting" , nil
  # "September 20 to October 9, 1941" , nil
  # "Christmas 1913" , nil
  # "July 11 - 17, 1915" , nil
  # "Wednesday, September 11th [1914?]" , nil
  # "[c. 1941]" , nil
  # "[1930 - 1905}" , nil
  # "Sep-41" , nil
  # "September, 1934" , nil
  # "[1940s]" , nil
  # "[1942]" , nil
  # "[1930s - 1950s]" , nil
  # "[1908/05/25]" , Date.civil(1908, 05, 25)
  # "Jan-10" , nil
  # "2009 on front of menu" , nil
  # "(2007-2010)" , nil
  # "1903?" , nil
  # "2009" , nil
  # "Undated" , nil
  # "undated" , nil
  # "Seems relatively contemporary (2010): Omelet=$10.95; http://www.baccobeverage.com/" , nil
  # "2000s" , nil
  # "1908/07/16 1908/07/17 1908/07/18 1908/07/21 1908/07/22" , Date.civil(1908, 07, 16)
  # "1909/01/02, 1887/07/131893/06/27" , Date.civil(1909, 01, 02)
  # "1898/01/10;1898/01/11;1898/12" , nil
  # "1898/06/01111" , nil
  # "1898/07/01 TO 1898/07/26" , Date.civil(1898, 07, 01)
  # "1898/O7/11 (MASSACHUSSETTS DAY)" , Date.civil(1898, 07, 11)
  # "(1898)/08/20" , Date.civil(1898, 08, 20)
  # "1898/12/19 - 1898/12/24" , Date.civil(1898, 12, 19)
  # "1/21/09" , Date.civil(1909, 01, 21)
  # "1899/02/08" , Date.civil(1899, 02, 08)


end
