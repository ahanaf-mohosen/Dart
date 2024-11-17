/* 
when we want to use null sefty operator or not null assertion that time we must to use the actual data type 
otherwise it show error message. such as, we should use int, String, double & not should to use final, void, dynamic. 
*/ 
void main() {
  int? x;
  
  print(x?.isEven);  //Use x?.isEven for safe access when the variable could be null.
  print(x!.isEven);  //Use x!.isEven only when you're absolutely sure that the variable will never be null.
}

/*
print(x?.isEven);
this expression we can write as if else statements, like

if (x!= null) {
  print(x.isEven);
} else {
  print(null);
}
*/

/*
Difference between `x?.isEven` and `x!.isEven`:
1. `x?.isEven`:
   - Uses the null-aware operator (`?.`).
   - Checks if `x` is `null` before accessing `.isEven`.
   - If `x` is `null`, the result is `null`, and no error occurs.
   - Safe for nullable variables (`int?`).

   Example:
   - If `x = null`, `print(x?.isEven)` will output `null`.

2. `x!.isEven`:
   - Uses the non-null assertion operator (`!`).
   - Assumes `x` is not `null`.
   - If `x` is `null`, it throws a runtime error (`Null check operator used on a null value`).
   - Should only be used when you're certain `x` is not `null`.

   Example:
   - If `x = null`, `print(x!.isEven)` will throw a runtime error.
*/