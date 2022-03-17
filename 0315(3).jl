### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 2158612f-ddf6-4f9a-ae54-47aff9b58b0a
using Plots

# ╔═╡ a39e054e-0447-4f3b-80c7-cab889e27964
md"# 3월15일 강의노트"

# ╔═╡ 5a5c3101-a0ee-4b7d-bb04-1ce2fb3d9e7a
md"##### 숙제"

# ╔═╡ 18221dae-f8bc-48c1-899b-be73d6e4910a
[2^i for i in 0:10]

# ╔═╡ d0a196a8-01fd-4b0f-bfcc-55e5006b7353
[2^i for i in [0,1,2,3,4,5,6,7,8,9,10]]
# in 다음에 list로 넣어줘야 하는 거!

# ╔═╡ 171b571b-2c5c-4039-87bc-b97388c68fe6
md"""
### 변수이름 
### 자료형
##### int, float 
##### Inf, Nan
##### 문자열 
##### 튜플
##### Array 
- Vector 
- Matrix 
- ... 
"""

# ╔═╡ 12839273-8a7e-48a1-9be8-26c6e8f2e3de
md"### matrix (더 자세히)"

# ╔═╡ c5e2fb02-21d5-44e9-985e-75078d4c5bf5
md"##### 선언"

# ╔═╡ d1d3c552-9b9e-4d45-8778-ce30d4b9dfda
md"`-` 선언하는 방법"

# ╔═╡ c7e638e0-11f6-4805-aa0e-913071056172
[1 2 3; 4 5 6]
# ;는 거의 엔터처럼 생각하면 된다.

# ╔═╡ 2749d412-232f-41cf-a615-02695ae8e3eb
x=3;y=4
# 두줄로 쓰면 안 되고 ;를 통해선 가능하다

# ╔═╡ e6d0ed51-4824-43eb-a89c-1d4cd7e33e78
y

# ╔═╡ e04ba67e-7d7b-4cb4-9c51-d7572d6cc5c0
x

# ╔═╡ a1007399-3441-4043-8916-c79196200cb2
[1,2,3].+[1 2 3]
# 열벡터, 행벡터의 브로드캐스팅을 통한 합연산

# ╔═╡ dc2f43b3-fb66-4f96-86d6-48ade6e3b605
[1 2 3
4 5 6] # 그냥 실제 엔터 쳐도 선언 가능

# ╔═╡ ce9b5739-6213-434e-8444-ceb4cabbef28
[
	1 2 3 
	4 5 6 
] # 보기좋게?

# ╔═╡ ff454362-f653-476f-870d-7b6b3e9ee7e1
md"`-` (1,4) matrix = lenght 4 row-vector 선언"

# ╔═╡ a84c236d-1156-4997-8b83-7813a26cfd72
[1 2 3 4] 

# ╔═╡ 9ba2ce1b-2173-479b-989b-42e8f22d5700
[1 ;; 2 ;; 3 ;; 4] # 이것도 가능

# ╔═╡ 8cf64d00-2d6b-4dbc-a319-7ef69079faf0
md"`-` (4,1) marix = length 4 col-vector 선언"

# ╔═╡ 84ee925b-4489-484f-b6bd-71e1f1acfd1e
[1;2;3;4]
# 열벡터 생성

# ╔═╡ 8220ad15-ffd8-400e-a816-e6062e8ff883
[1,2,3,4] # 이게 사실은 length 4인 col-vector 로 여길수 있음..

# ╔═╡ 94f18da5-5a21-49e4-8691-f63142373281
[
	1
	2
	3
	4
] # 편해요..

# ╔═╡ 1b226aa6-c4b5-4a9d-a649-85907ae97903
md"`-` (4,2) matrix 선언과 잘못된 선언 "

# ╔═╡ ad6c5952-3e86-415b-a127-42238734a3a9
[1 2; 2 3 ; 3 4 ; 4 5]

# ╔═╡ 3114f121-4b51-4acd-8e30-409cb42fcd3b
# [1 2, 2 3 , 3 4 , 4 5] # 잘못된 선언방식

# ╔═╡ 7fa90a53-b739-4e42-a5c1-76ee80cbe3e4
[
	1 2 
	2 3 
	3 4 
	4 5 
] # 이게 젤 편해요

# ╔═╡ ecc5e457-f400-4a07-bb34-6325a5830c65
md"##### 연산"

# ╔═╡ 223c1e25-5339-4de4-92f6-303e909da489
md"`-` 곱셈"

# ╔═╡ cf6bfe27-2d26-4472-8789-0456693a3a11
[1 0 ; 0 1] * [1,2]
# 결과는 2x1 행렬이 된다

# ╔═╡ 2bc395b2-6186-4b20-9788-f52b939464d5
# [1,2] * [1 0 ; 0 1] 
# error

# ╔═╡ af334ef5-d37b-4b05-8cc6-cbb585c9a888
[1 2] * [1 0 ; 0 1]

# ╔═╡ 156f33fc-2d64-4e8b-b931-5920a83bf97a
md"`-` 트랜스포즈"

# ╔═╡ de53accd-33b4-4ac9-b7ec-a6c95a3af761
md"(연산자사용)"

# ╔═╡ bb2c3099-7a48-45f6-9b3d-dba1ff0ac970
[1 2; 3 4]

# ╔═╡ 35660a52-e360-4538-b7fc-d06b6fcb1723
[1 2; 3 4]'

# ╔═╡ dd37cfac-a210-44a7-9984-11267dc2dedb
[1,2,3,4]'
# 행벡터가 될 것이다.

# ╔═╡ 69835a56-c9c6-4561-b24a-4e9ce1919637
md"(복잡한방법)"

# ╔═╡ fd62d9d1-f82e-4c00-92fd-6e0c33e2a329
adjoint([1 2; 3 4])

# ╔═╡ 52e6d112-987c-41bd-962a-ebd711648ba5
md"""
`-` hcat, vcat 
- hcat: R에서의 cbind, 좌우로 붙인다
- vcat: R에서의 rbind, 위 아래로 붙인다
"""

# ╔═╡ c6fe9b45-aa6e-4f38-9118-bbf4567ce55f
hcat([1,2,3],[11,12,13])
# 3*1 col-vec (hcat) 3*1 col-vec => 3*2 matrix

# ╔═╡ 5d7aade6-c7eb-4979-af83-d85cc7dbc5ec
hcat([1,2,3],[11,12,13],[111,112,113])
# 3*1 col-vec (hcat) 3*1 col-vec (hcat) => 3*3 matrix

# ╔═╡ 4bc16860-dd17-4831-8365-83cb8073f9c4
hcat([1 11 ; 2 12 ; 3 13 ], [111, 222, 333])
# 3*2 matrix (hcat) 3*1 col-vec (hcat) => 3*3 matrix
# 이렇게 matrix와 vector를 붙일 수도 있다.

# ╔═╡ 3b41c9cd-63f8-4491-abed-c933834718d6
# hcat([1 11 ; 2 12 ; 3 13 ], [111 222 333])
# 3*2 matrix (hcat) 1*3 row-vec (hcat) => 불가능
# 차원이 맞지 않아서 수행되지 않는다.

# ╔═╡ ec4455f7-1926-47e7-b040-ab6f6a4f6f37
# rbind 할 것.
vcat([1 2 3 4], [11 22 33 44])
# 1*4 row-vec (vcat) 1*4 row-vec ==> 2*4 matrix

# ╔═╡ f58c8d79-486d-462c-b1c8-c42e45174a9d
vcat(hcat(vcat([1 2 3 4], [11 22 33 44]),[-1,-2]),[-1 -2 -3 -4 -5])
# 혼합하여사용가능

# ╔═╡ ed11ba08-eca6-4fe4-b954-c46d98e581e9
md"""
`-` hcat, vcat의 더 쉬운 사용방법
"""

# ╔═╡ bc5ee879-28c0-4142-b24e-57e9001f1b05
[[1,2,3] [4,5,6]] # hcat(A,B) = [A B]

# ╔═╡ 02534d28-24c4-4124-80a3-87e0b6d05ff8
[[1 2 3; 4 5 6] ; [7 8 9]] # vcat(A,B) = [A; B]

# ╔═╡ 1db942d9-b61d-45e0-9db0-625806de8663
# 아래와 같이 직관적으로 사용할 수 있다.
[
	[1 2 3; 4 5 6] 
	[7 8 9]
]

# ╔═╡ 51d5d6ec-4788-443e-b4a1-0da210cbaf25
[
	[
		1 2 3
		4 5 6
	]
	
	[
		7 8 9
	]
]

# ╔═╡ bb94a5ad-ee1b-462b-b2d9-731a45603328
md"편하고 좋아요.."

# ╔═╡ a77dff93-bb99-4c93-b00f-8de0135edcc0
a1=[1 2 
    3 4]

# ╔═╡ 4e7f10d6-d4f3-4dba-bd82-4e1e027cd132
a2=[5
    6]

# ╔═╡ 2daa7139-87b5-4e07-b5c1-ee7a9b61348f
a3=[7 8]

# ╔═╡ a2b53145-323a-40f9-b138-45f3b0a5854e
[
	a1 a2 
	a3 9
]

# ╔═╡ f0ca14d2-0b13-4fad-93fc-d5806957cd40
# [
# 	a1 a3
# 	a2 9
# ] # 디멘젼이 맞지 않으므로 에러가 발생

# ╔═╡ d399a7b2-4ac5-4f2e-8039-6ffb0b09d6e6
md"`-` reshape"

# ╔═╡ e8dfcb15-a94d-49e6-96c7-033c649edfdb
# 열부터 채우는 것 같다.
reshape(1:6, (2,3))

# ╔═╡ b07575ab-67ed-4fcb-9574-a0e2e29bde09
# 열부터 채우는 것 같다.
reshape(1:6, (3,2))

# ╔═╡ 4e77e610-ab8a-4b08-99cc-8e5ca15522c0
reshape(1:6, (6,1))

# ╔═╡ e5a82661-28f9-42c1-8763-a633dd89c2db
reshape(1:6, (1,6))

# ╔═╡ 213fdb89-cf30-44d2-a3b2-a6da706decc3
reshape(1:8, (2,2,2))

# ╔═╡ 86a67dfe-da9c-4ed6-980e-131b8892065d
reshape(1:24, (2,2,2,3))

# ╔═╡ 24e90ab1-6bc5-44c7-a659-3a2ea3494177
md"### 벡터와 매트릭스 (자투리)"

# ╔═╡ b8373e03-4558-46f5-8f57-90f3b52d0193
md"##### Range"

# ╔═╡ aaa05575-1873-45f0-acf6-b18c5b3f5c29
1:3
# 파이썬에서는 range(1,4)

# ╔═╡ 861b5ade-2ed9-4b28-a8ae-50d0c5e4705a
typeof(1:3)

# ╔═╡ da842d51-53b6-4ec6-875e-f6c8e7b7681b
# 1,2,3이 들어가있는지 ckeck
Array(1:3)

# ╔═╡ 4ba39004-4c1e-4f99-878f-2ed95b4e9e52
typeof(Array(1:3))

# ╔═╡ 484c5ed1-65c3-42b2-9962-9916320c1856
Array(1:3:20)

# ╔═╡ 34fe6d7c-e440-453d-9d68-d11b706a8d4b
md"`-` range도 연산이 가능함"

# ╔═╡ 0afe44aa-d5e9-4f85-9ed2-27c73fd24a9a
(1:3) + (1:3) 

# ╔═╡ 7cb2f34d-8362-418a-becd-3f754ce43ec7
Array((1:3) + (1:3))

# ╔═╡ d1f2cb76-79be-4da5-ba27-c4626ab61770
# (1:3) + 1
# 이렇게 하면 안 되고
(1:3) .+ 1

# ╔═╡ 99b09469-a7f9-47ce-a21b-b82574db5cb7
(1:3) .* 2 .+ 100

# ╔═╡ ae011f7f-7ec2-43eb-a213-9dce06dcca29
Array((1:3) .* 2 .+ 100)

# ╔═╡ 25022f43-7561-4d74-948b-a149bb629fe2
md"### index"

# ╔═╡ 28899b48-3b43-44a2-b18d-d7727d44ef7c
md"`-` 1차원으로 인덱싱"

# ╔═╡ 47335258-4e82-4a3f-b85b-2ba48f582269
A= [1 2 3 
	4 5 6 
	7 8 9]

# ╔═╡ 8c73dcdc-199c-4040-892e-562946fd28b0
A[1]

# ╔═╡ e17a4aad-3d09-4966-90a8-faf3d94e37f4
A[2]

# ╔═╡ a2b6ce19-58eb-4063-91b8-c0a9aa2eb1a6
A[6]

# ╔═╡ 7805cdde-7bb2-44ea-806c-9fb5ab39075f
A[1:4]

# ╔═╡ 53d142ac-3d20-4d24-b01a-77f9c0f2cc77
# 해당 인덱스를 리스트로 넣어주자
A[[1,3,5,7]]

# ╔═╡ 76f991d0-5e8f-431f-82ba-d592ef135ecf
md"`-` 2차원으로 인덱싱"

# ╔═╡ 908e150f-8660-4b3a-9af6-246b6929280e
A

# ╔═╡ fe76a4cd-c685-460b-96e2-34c91fecc990
A[:,1] # 첫번째 col 

# ╔═╡ 453a23b7-e99d-40b1-a94e-37eb4e870e09
A[:,[1]] 
# 첫번째 col
# 위 셀보다 좀 더 명시적으로!

# ╔═╡ 082932b1-899d-4f9d-a14f-87a75c7c05ba
A[1,:] # 첫번째 row

# ╔═╡ ff2f6191-e7bd-4dc5-8947-e4dc3166313b
A[[1],:] # 첫번째 row(좀 더 명시적으로)

# ╔═╡ 752e9d30-43f6-4890-9a9d-b982f61a533d
A[[1,3],:] # 첫번째 row, 세번째 row

# ╔═╡ 7a30be54-59a8-48dc-a835-b833b1c58049
A[[1,3],2] # (첫번째 row, 세번째 row) ==> 두번째 칼럼

# ╔═╡ 5a5cdbbd-8dbc-4a32-b0f4-f6cce879412d
A[[1,3],[2]] # (첫번째 row, 세번째 row) ==> 두번째 칼럼 /// 좀더 명시적으로!

# ╔═╡ 03895c3f-2353-42a1-8f2a-e28e29574c34
md"`-` 고차원"

# ╔═╡ 45c44acf-319a-4601-8be3-ec84dea11ef8
B=reshape(1:36,(3,3,2,2))

# ╔═╡ a0f37987-7d7c-4867-8dc5-97343ae3cd63
B[1:2, 2:3, 1, :]
# [(모든 블럭에서의 1,2행),(모든 블럭에서의 2,3열),(1행 블럭),(1행 블럭 모두 선택)]

# ╔═╡ 014e1f0c-5c23-4104-851d-d6112f2cc9f2
B[1:2, [1,3], :, 1]

# ╔═╡ 96108638-d8a0-41ea-9332-8559c6917db5
md"`-` 로지칼인덱싱"

# ╔═╡ 5daf498c-4ab3-47ea-b15a-c88fc8d1e014
a=[1,2,3,4]

# ╔═╡ 806e5f53-e17a-4e01-a9a7-1ff79839677c
a[[true,false,true,false]]
# 리스트로 넣어준다

# ╔═╡ f93db673-a907-4fe9-a54b-0c505a1c99d9
a[a.>2]

# ╔═╡ e0128892-4ee9-4583-b221-2c07c59b9dfe
a.>2
# logiccal list로 반환된다.

# ╔═╡ e27a7070-9a40-46b7-9054-3f4424ab841a
md"### 함수선언"

# ╔═╡ 384c4e1f-e557-4437-8122-3ea468d60961
md"`-` 스타일1"

# ╔═╡ 441e0f33-fe0a-4eca-8d68-232b8a6f29d2
function f1(x,y)
	return √(x^2+y^2) # return 명시
end

# ╔═╡ 0460f841-982a-46f5-99af-955c14991075
f1(1,1)

# ╔═╡ eb67bdd5-37ff-41a1-b5c4-736fd72a61e5
md"`-` 스타일2"

# ╔═╡ 2fd8d9f4-e9b4-4d88-86e7-03ecaddfd692
function f2(x,y)
	a= x^2 + y^2
	√a # return 생략, 이게 return값이 된다.
end

# ╔═╡ fce1fbc1-5caa-4a57-8a31-1b4ba007f104
f2(1,1)

# ╔═╡ 44bba248-9a02-4ea6-b9cd-41abe978e5a9
md"`-` ***스타일3***"

# ╔═╡ 33934ed6-14d4-45d1-bc49-ff24db2ced80
f3(x,y) = √(x^2+y^2)

# ╔═╡ 23df5e92-30bd-4bad-8242-7ccb56b3c064
f3(1,1)

# ╔═╡ 4665d68f-fba8-47b3-a978-034d8e9a6c2d
md"`-` 스타일4"

# ╔═╡ 57bbe8e9-280f-4d75-8f08-6559599b8188
f4 = (x,y) -> √(x^2+y^2)

# ╔═╡ e1dfd750-39b3-4e82-960f-53fe45d25fab
f4(1,1)

# ╔═╡ 5bbee205-fe9b-4477-9bc8-14d2f6540cf5
md"`-` 스타일5 : (이름을 정하지 않는, 익명함수)"

# ╔═╡ 762d650b-7a7f-47d1-a571-231272e85f5e
((x,y) -> √(x^2+y^2))(1,1)

# ╔═╡ d432ab84-069e-462d-9c7f-10ad8020a827
md"`-` 합성함수"

# ╔═╡ 6fbe924e-feda-4a64-b752-4d752fa754e0
f= (x -> 3x) ∘ (x -> x+1) # f(x)= 3(x+1) 란 의미

# ╔═╡ 2c3ebb43-4835-4647-8907-0bfe6ba940ef
f(-5)

# ╔═╡ 2b081a93-3e67-4027-a9c2-99691ce15130
md"### 숙제:"

# ╔═╡ a1732e88-bdc7-477a-89e1-d099556cdf49
md"함수 $f(x)=(x-1)^2$를 함성함수를 이용하여 선언하고 $(x,f(x))$의 그래프를 $x \in (-1,3)$의 범위에서 그린뒤에 제출 (단, x는 -1에서 시작하여 3으로 0.05간격의 벡터를 이용하여 생성한뒤에 그릴것)"

# ╔═╡ 65941283-f887-4f18-b38f-2cc560724b9f
h = (x -> x^2) ∘ (x -> x-1)

# ╔═╡ 85c6fda4-e267-4af2-afba-542976121f83
rst=[h(x) for x in Array(-1:0.05:3)]

# ╔═╡ cdcfa55c-8d0c-4a6e-a435-2be9c1224577
h(x)
# 그런데 이건 왜 4로 나오지?

# ╔═╡ 5c50f08d-9fd4-40ef-a102-f31c774e461a
Array(-1:0.05:3)

# ╔═╡ c4a5077f-d1ae-4f98-90e8-5b65008a58a6
plot(Array(-1:0.05:3),rst)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"

[compat]
Plots = "~1.27.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.Adapt]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "af92965fb30777147966f58acb05da51c5616b5f"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.3.3"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "4b859a208b2397a7a623a03449e4636bdb17bcf2"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+1"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "c9a6160317d1abe9c44b3beb367fd448117679ca"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.13.0"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "bf98fa45a0a4cee295de98d4c1462be26345b9a1"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.2"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "Colors", "FixedPointNumbers", "Random"]
git-tree-sha1 = "12fc73e5e0af68ad3137b886e3f7c1eacfca2640"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.17.1"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "417b0ed7b8b838aa6ca0a87aadf1bb9eb111ce40"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.8"

[[deps.Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "96b0bc6c52df76506efc8a441c6cf1adcb1babc4"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.42.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Contour]]
deps = ["StaticArrays"]
git-tree-sha1 = "9f02045d934dc030edad45944ea80dbd1f0ebea7"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.5.7"

[[deps.DataAPI]]
git-tree-sha1 = "cc70b17275652eb47bc9e5f81635981f13cea5c8"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.9.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "3daef5523dd2e769dad2365274f760ff5f282c7d"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.11"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "b19534d1895d702889b219c382a6e18010797f0b"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.8.6"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3f3a2501fa7236e9b911e0f7a588c657e822bb6d"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.2.3+0"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ae13fcbc7ab8f16b0856729b050ef0c446aa3492"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.4.4+0"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "Pkg", "Zlib_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "d8a578692e3077ac998b50c0217dfd67f21d1e5f"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.0+0"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "87eb71354d8ec1a96d4a7636bd57a7347dde3ef9"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.4+0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "51d2dfe8e590fbd74e7a842cf6d13d8a2f45dc01"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.6+0"

[[deps.GR]]
deps = ["Base64", "DelimitedFiles", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Pkg", "Printf", "Random", "RelocatableFolders", "Serialization", "Sockets", "Test", "UUIDs"]
git-tree-sha1 = "9f836fb62492f4b0f0d3b06f55983f2704ed0883"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.64.0"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Pkg", "Qt5Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "a6c850d77ad5118ad3be4bd188919ce97fffac47"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.64.0+0"

[[deps.GeometryBasics]]
deps = ["EarCut_jll", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "83ea630384a13fc4f002b77690bc0afeb4255ac9"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.2"

[[deps.Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "a32d672ac2c967f3deb8a81d828afc739c838a06"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.68.3+2"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HTTP]]
deps = ["Base64", "Dates", "IniFile", "Logging", "MbedTLS", "NetworkOptions", "Sockets", "URIs"]
git-tree-sha1 = "0fa77022fe4b511826b39c894c90daf5fce3334a"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "0.9.17"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "129acf094d168394e80ee1dc4bc06ec835e510a3"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+1"

[[deps.IniFile]]
git-tree-sha1 = "f550e6e32074c939295eb5ea6de31849ac2c9625"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.1"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "91b5dcf362c5add98049e6c29ee756910b03051d"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.3"

[[deps.IrrationalConstants]]
git-tree-sha1 = "7fd44fd4ff43fc60815f8e764c0f352b83c49151"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.1.1"

[[deps.IterTools]]
git-tree-sha1 = "fa6287a4469f5e048d763df38279ee729fbd44e5"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.4.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b53380851c6e6664204efb2e62cd24fa5c47e4ba"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.2+0"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bf36f528eec6634efc60d7ec062008f171071434"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "3.0.0+1"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "Printf", "Requires"]
git-tree-sha1 = "4f00cc36fede3c04b8acf9b2e2763decfdcecfa6"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.13"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[deps.Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "7739f837d6447403596a75d19ed01fd08d6f56bf"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.3.0+3"

[[deps.Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "42b62845d70a619f063a7da093d995ec8e15e778"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+1"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "c9551dd26e31ab17b86cbd00c2ede019c08758eb"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.3.0+1"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "58f25e56b706f95125dcb796f39e1fb01d913a71"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.10"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "3d3e902b31198a27340d0bf00d6ac452866021cf"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.9"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "Random", "Sockets"]
git-tree-sha1 = "1c38e51c3d08ef2278062ebceade0e46cefc96fe"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.0.3"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Measures]]
git-tree-sha1 = "e498ddeee6f9fdb4551ce855a46f54dbd900245f"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.1"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NaNMath]]
git-tree-sha1 = "737a5957f387b17e74d4ad2f440eb330b39a62c5"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.0.0"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "887579a3eb005446d514ab7aeac5d1d027658b8f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+1"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ab05aa4cc89736e95915b01e7279e61b1bfe33b8"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.14+0"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.PCRE_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b2a7af664e098055a7529ad1a900ded962bca488"
uuid = "2f80f16e-611a-54ab-bc61-aa92de5b98fc"
version = "8.44.0+0"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "85b5da0fa43588c75bb1ff986493443f821c70b7"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.3"

[[deps.Pixman_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b4f5d02549a10e20780a24fce72bea96b6329e29"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.40.1+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlotThemes]]
deps = ["PlotUtils", "Requires", "Statistics"]
git-tree-sha1 = "a3a964ce9dc7898193536002a6dd892b1b5a6f1d"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "2.0.1"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "Printf", "Random", "Reexport", "Statistics"]
git-tree-sha1 = "bb16469fd5224100e422f0b027d26c5a25de1200"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.2.0"

[[deps.Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "GeometryBasics", "JSON", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "Pkg", "PlotThemes", "PlotUtils", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "Requires", "Scratch", "Showoff", "SparseArrays", "Statistics", "StatsBase", "UUIDs", "UnicodeFun", "Unzip"]
git-tree-sha1 = "9213b4c18b57b7020ee20f33a4ba49eb7bef85e0"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.27.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "d3538e7f8a790dc8903519090857ef8e1283eecd"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.2.5"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Qt5Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "xkbcommon_jll"]
git-tree-sha1 = "ad368663a5e20dbb8d6dc2fddeefe4dae0781ae8"
uuid = "ea2cea3b-5b76-57ae-a6ef-0a8af62496e1"
version = "5.15.3+0"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
git-tree-sha1 = "6bf3f380ff52ce0832ddd3a2a7b9538ed1bcca7d"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.2.1"

[[deps.RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "RecipesBase"]
git-tree-sha1 = "995a812c6f7edea7527bb570f0ac39d0fb15663c"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.5.1"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "cdbd3b1338c72ce29d9584fdbe9e9b70eeb5adca"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "0.1.3"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "0b4b7f1393cff97c33891da2a0bf69c6ed241fda"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.1.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "Random", "Statistics"]
git-tree-sha1 = "6976fab022fea2ffea3d945159317556e5dad87c"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.4.2"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "c3d8ba7f3fa0625b062b82853a7d5229cb728b6b"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.2.1"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "8977b17906b0a1cc74ab2e3a05faa16cf08a8291"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.16"

[[deps.StructArrays]]
deps = ["Adapt", "DataAPI", "StaticArrays", "Tables"]
git-tree-sha1 = "57617b34fa34f91d536eb265df67c2d4519b8b98"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.5"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "5ce79ce186cc678bbb5c5681ca3379d1ddae11a1"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.7.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.URIs]]
git-tree-sha1 = "97bbe755a53fe859669cd907f2d96aee8d2c1355"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.3.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Unzip]]
git-tree-sha1 = "34db80951901073501137bdbc3d5a8e7bbd06670"
uuid = "41fe7b60-77ed-43a1-b4f0-825fd5a5650d"
version = "0.1.2"

[[deps.Wayland_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "3e61f0b86f90dacb0bc0e73a0c5a83f6a8636e23"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.19.0+0"

[[deps.Wayland_protocols_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4528479aa01ee1b3b4cd0e6faef0e04cf16466da"
uuid = "2381bf8a-dfd0-557d-9999-79630e7b1b91"
version = "1.25.0+0"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "1acf5bdf07aa0907e0a37d3718bb88d4b687b74a"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.9.12+0"

[[deps.XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "5be649d550f3f4b95308bf0183b82e2582876527"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.6.9+4"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4e490d5c960c314f33885790ed410ff3a94ce67e"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.9+4"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fe47bd2247248125c428978740e18a681372dd4"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.3+4"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[deps.Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6783737e45d3c59a4a4c4091f5f88cdcf0908cbb"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.0+3"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "daf17f441228e7a3833846cd048892861cff16d6"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.13.0+3"

[[deps.Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "926af861744212db0eb001d9e40b5d16292080b2"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.0+4"

[[deps.Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "0fab0a40349ba1cba2c1da699243396ff8e94b97"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll"]
git-tree-sha1 = "e7fd7b2881fa2eaa72717420894d3938177862d1"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "d1151e2c45a544f32441a567d1690e701ec89b00"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "dfd7a8f38d4613b6a575253b3174dd991ca6183e"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.9+1"

[[deps.Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "e78d10aab01a4a154142c5006ed44fd9e8e31b67"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.1+1"

[[deps.Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "4bcbf660f6c2e714f87e960a171b119d06ee163b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.2+4"

[[deps.Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "5c8424f8a67c3f2209646d4425f3d415fee5931d"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.27.0+4"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "79c31e7844f6ecf779705fbc12146eb190b7d845"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.4.0+3"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e45044cd873ded54b6a5bac0eb5c971392cf1927"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.2+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "b910cb81ef3fe6e78bf6acee440bda86fd6ae00c"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"

[[deps.xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll", "Wayland_protocols_jll", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "ece2350174195bb31de1a63bea3a41ae1aa593b6"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "0.9.1+5"
"""

# ╔═╡ Cell order:
# ╟─a39e054e-0447-4f3b-80c7-cab889e27964
# ╟─5a5c3101-a0ee-4b7d-bb04-1ce2fb3d9e7a
# ╠═18221dae-f8bc-48c1-899b-be73d6e4910a
# ╠═d0a196a8-01fd-4b0f-bfcc-55e5006b7353
# ╟─171b571b-2c5c-4039-87bc-b97388c68fe6
# ╟─12839273-8a7e-48a1-9be8-26c6e8f2e3de
# ╟─c5e2fb02-21d5-44e9-985e-75078d4c5bf5
# ╟─d1d3c552-9b9e-4d45-8778-ce30d4b9dfda
# ╠═c7e638e0-11f6-4805-aa0e-913071056172
# ╠═2749d412-232f-41cf-a615-02695ae8e3eb
# ╠═e6d0ed51-4824-43eb-a89c-1d4cd7e33e78
# ╠═e04ba67e-7d7b-4cb4-9c51-d7572d6cc5c0
# ╠═a1007399-3441-4043-8916-c79196200cb2
# ╠═dc2f43b3-fb66-4f96-86d6-48ade6e3b605
# ╠═ce9b5739-6213-434e-8444-ceb4cabbef28
# ╟─ff454362-f653-476f-870d-7b6b3e9ee7e1
# ╠═a84c236d-1156-4997-8b83-7813a26cfd72
# ╠═9ba2ce1b-2173-479b-989b-42e8f22d5700
# ╟─8cf64d00-2d6b-4dbc-a319-7ef69079faf0
# ╠═84ee925b-4489-484f-b6bd-71e1f1acfd1e
# ╠═8220ad15-ffd8-400e-a816-e6062e8ff883
# ╠═94f18da5-5a21-49e4-8691-f63142373281
# ╟─1b226aa6-c4b5-4a9d-a649-85907ae97903
# ╠═ad6c5952-3e86-415b-a127-42238734a3a9
# ╠═3114f121-4b51-4acd-8e30-409cb42fcd3b
# ╠═7fa90a53-b739-4e42-a5c1-76ee80cbe3e4
# ╟─ecc5e457-f400-4a07-bb34-6325a5830c65
# ╟─223c1e25-5339-4de4-92f6-303e909da489
# ╠═cf6bfe27-2d26-4472-8789-0456693a3a11
# ╠═2bc395b2-6186-4b20-9788-f52b939464d5
# ╟─af334ef5-d37b-4b05-8cc6-cbb585c9a888
# ╠═156f33fc-2d64-4e8b-b931-5920a83bf97a
# ╟─de53accd-33b4-4ac9-b7ec-a6c95a3af761
# ╠═bb2c3099-7a48-45f6-9b3d-dba1ff0ac970
# ╠═35660a52-e360-4538-b7fc-d06b6fcb1723
# ╠═dd37cfac-a210-44a7-9984-11267dc2dedb
# ╟─69835a56-c9c6-4561-b24a-4e9ce1919637
# ╠═fd62d9d1-f82e-4c00-92fd-6e0c33e2a329
# ╟─52e6d112-987c-41bd-962a-ebd711648ba5
# ╠═c6fe9b45-aa6e-4f38-9118-bbf4567ce55f
# ╠═5d7aade6-c7eb-4979-af83-d85cc7dbc5ec
# ╠═4bc16860-dd17-4831-8365-83cb8073f9c4
# ╠═3b41c9cd-63f8-4491-abed-c933834718d6
# ╠═ec4455f7-1926-47e7-b040-ab6f6a4f6f37
# ╠═f58c8d79-486d-462c-b1c8-c42e45174a9d
# ╟─ed11ba08-eca6-4fe4-b954-c46d98e581e9
# ╠═bc5ee879-28c0-4142-b24e-57e9001f1b05
# ╠═02534d28-24c4-4124-80a3-87e0b6d05ff8
# ╠═1db942d9-b61d-45e0-9db0-625806de8663
# ╠═51d5d6ec-4788-443e-b4a1-0da210cbaf25
# ╟─bb94a5ad-ee1b-462b-b2d9-731a45603328
# ╠═a77dff93-bb99-4c93-b00f-8de0135edcc0
# ╠═4e7f10d6-d4f3-4dba-bd82-4e1e027cd132
# ╠═2daa7139-87b5-4e07-b5c1-ee7a9b61348f
# ╠═a2b53145-323a-40f9-b138-45f3b0a5854e
# ╠═f0ca14d2-0b13-4fad-93fc-d5806957cd40
# ╠═d399a7b2-4ac5-4f2e-8039-6ffb0b09d6e6
# ╠═e8dfcb15-a94d-49e6-96c7-033c649edfdb
# ╠═b07575ab-67ed-4fcb-9574-a0e2e29bde09
# ╠═4e77e610-ab8a-4b08-99cc-8e5ca15522c0
# ╠═e5a82661-28f9-42c1-8763-a633dd89c2db
# ╠═213fdb89-cf30-44d2-a3b2-a6da706decc3
# ╠═86a67dfe-da9c-4ed6-980e-131b8892065d
# ╟─24e90ab1-6bc5-44c7-a659-3a2ea3494177
# ╟─b8373e03-4558-46f5-8f57-90f3b52d0193
# ╠═aaa05575-1873-45f0-acf6-b18c5b3f5c29
# ╠═861b5ade-2ed9-4b28-a8ae-50d0c5e4705a
# ╠═da842d51-53b6-4ec6-875e-f6c8e7b7681b
# ╠═4ba39004-4c1e-4f99-878f-2ed95b4e9e52
# ╠═484c5ed1-65c3-42b2-9962-9916320c1856
# ╟─34fe6d7c-e440-453d-9d68-d11b706a8d4b
# ╠═0afe44aa-d5e9-4f85-9ed2-27c73fd24a9a
# ╠═7cb2f34d-8362-418a-becd-3f754ce43ec7
# ╠═d1f2cb76-79be-4da5-ba27-c4626ab61770
# ╠═99b09469-a7f9-47ce-a21b-b82574db5cb7
# ╠═ae011f7f-7ec2-43eb-a213-9dce06dcca29
# ╟─25022f43-7561-4d74-948b-a149bb629fe2
# ╟─28899b48-3b43-44a2-b18d-d7727d44ef7c
# ╠═47335258-4e82-4a3f-b85b-2ba48f582269
# ╠═8c73dcdc-199c-4040-892e-562946fd28b0
# ╠═e17a4aad-3d09-4966-90a8-faf3d94e37f4
# ╠═a2b6ce19-58eb-4063-91b8-c0a9aa2eb1a6
# ╠═7805cdde-7bb2-44ea-806c-9fb5ab39075f
# ╠═53d142ac-3d20-4d24-b01a-77f9c0f2cc77
# ╟─76f991d0-5e8f-431f-82ba-d592ef135ecf
# ╠═908e150f-8660-4b3a-9af6-246b6929280e
# ╠═fe76a4cd-c685-460b-96e2-34c91fecc990
# ╠═453a23b7-e99d-40b1-a94e-37eb4e870e09
# ╠═082932b1-899d-4f9d-a14f-87a75c7c05ba
# ╠═ff2f6191-e7bd-4dc5-8947-e4dc3166313b
# ╠═752e9d30-43f6-4890-9a9d-b982f61a533d
# ╠═7a30be54-59a8-48dc-a835-b833b1c58049
# ╠═5a5cdbbd-8dbc-4a32-b0f4-f6cce879412d
# ╟─03895c3f-2353-42a1-8f2a-e28e29574c34
# ╠═45c44acf-319a-4601-8be3-ec84dea11ef8
# ╠═a0f37987-7d7c-4867-8dc5-97343ae3cd63
# ╠═014e1f0c-5c23-4104-851d-d6112f2cc9f2
# ╟─96108638-d8a0-41ea-9332-8559c6917db5
# ╠═5daf498c-4ab3-47ea-b15a-c88fc8d1e014
# ╠═806e5f53-e17a-4e01-a9a7-1ff79839677c
# ╠═f93db673-a907-4fe9-a54b-0c505a1c99d9
# ╠═e0128892-4ee9-4583-b221-2c07c59b9dfe
# ╟─e27a7070-9a40-46b7-9054-3f4424ab841a
# ╟─384c4e1f-e557-4437-8122-3ea468d60961
# ╠═441e0f33-fe0a-4eca-8d68-232b8a6f29d2
# ╠═0460f841-982a-46f5-99af-955c14991075
# ╟─eb67bdd5-37ff-41a1-b5c4-736fd72a61e5
# ╠═2fd8d9f4-e9b4-4d88-86e7-03ecaddfd692
# ╠═fce1fbc1-5caa-4a57-8a31-1b4ba007f104
# ╟─44bba248-9a02-4ea6-b9cd-41abe978e5a9
# ╠═33934ed6-14d4-45d1-bc49-ff24db2ced80
# ╠═23df5e92-30bd-4bad-8242-7ccb56b3c064
# ╟─4665d68f-fba8-47b3-a978-034d8e9a6c2d
# ╠═57bbe8e9-280f-4d75-8f08-6559599b8188
# ╠═e1dfd750-39b3-4e82-960f-53fe45d25fab
# ╟─5bbee205-fe9b-4477-9bc8-14d2f6540cf5
# ╠═762d650b-7a7f-47d1-a571-231272e85f5e
# ╟─d432ab84-069e-462d-9c7f-10ad8020a827
# ╠═6fbe924e-feda-4a64-b752-4d752fa754e0
# ╠═2c3ebb43-4835-4647-8907-0bfe6ba940ef
# ╟─2b081a93-3e67-4027-a9c2-99691ce15130
# ╟─a1732e88-bdc7-477a-89e1-d099556cdf49
# ╠═65941283-f887-4f18-b38f-2cc560724b9f
# ╠═85c6fda4-e267-4af2-afba-542976121f83
# ╠═cdcfa55c-8d0c-4a6e-a435-2be9c1224577
# ╠═5c50f08d-9fd4-40ef-a102-f31c774e461a
# ╠═2158612f-ddf6-4f9a-ae54-47aff9b58b0a
# ╠═c4a5077f-d1ae-4f98-90e8-5b65008a58a6
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
