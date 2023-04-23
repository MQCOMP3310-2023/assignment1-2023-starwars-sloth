/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

import java

from MethodAccess call, Method method, MethodAccess call2, Method method2
where
  call.getMethod() = method and
  method.hasName("println") and
  method.getDeclaringType().hasQualifiedName("java.io", "PrintStream") and
  call2.getMethod() = method2 and
  method2.hasName("getMessage") and
  method2.getDeclaringType().hasQualifiedName("java.lang", "Throwable") and
  call.getAChildExpr*() = call2
  or
  call.getMethod() = method and
  method.hasName("printStackTrace") and
  method.getDeclaringType().hasQualifiedName("java.lang", "Throwable")
select call, "Warnings about either printStackTrace or getMessage"
