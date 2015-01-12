public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    } else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  int m=0;
  String sWord = new String();

  for (int i = 0; i < word.length (); i++)
  {
    if (Character.isLetter(word.charAt(i)) == true )
    {
      sWord = sWord + word.charAt(i);
    }
  }
  sWord = sWord.toLowerCase();
  for ( int n = 0; n < (sWord.length ()/2); n ++)
  {
    if (sWord.charAt(n) == sWord.charAt(sWord.length()-n-1))
    {
      m++;
    }
  }
  if (m >= sWord.length ()/2)
  {
    return true;
  } else 
  {
    return false;
  }
}
