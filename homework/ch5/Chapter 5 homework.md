## Chapter 5 homework

**Name:** Zhang Yupeng

**Student ID:** 5130309468### Exercise 5.3.1
 Write each of the queries of Exercise 2.4.1 a) f) h) in Datalog. You should use only safe rules, but you may wish to use several IDB predicates corresponding to sub-expressions of complicated relational-algebra expressions.
**a)	What PC models have a speed of at least 3.00?**

$I(model) \leftarrow PC(model,speed)$ AND $speed \geq 3.00$
**f)	Find those hard-disk sizes that occur in two or more PC’s.**

$I(hd) \leftarrow PC(model1,hd)$ AND $PC(model2,hd)$ AND $model1 <> model2$
**h)	Find those manufacturers of at least two different computers (PC’s or laptops) with speeds of at least 2.80.**

$R(model) \leftarrow PC(moedl,speed)$ AND $speed \geq 2.80$

$R(model) \leftarrow Laptop(model,speed)$ AND $speed \geq 2.80$

$I(maker) \leftarrow Product(maker, model1)$ AND $Product(maker, model2)$ AND $R(model1)$ AND $R(model2)$ AND $model1 < > model2$
### Exercise 5.4.1
 Let R(a, b, c), S(a, b, c), and T(a, b, c) be three relations. Write one or more Datalog rules that define the result of each of the following expressions of relational algebra:
**g) $\pi\_{a,b}(R) \cap \rho\_{U(a,b)}(\pi\_{b,c}(S))$**

$I(a,b) \leftarrow S(b,c)$

$J(a,b) \leftarrow R(a,b)$

$K(a,b) \leftarrow I(a,b)$ AND $J(a,b)$
 