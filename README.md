1. Quando eu fizer um build do registered_user
2. Ele vai criar o usuario
3. Se tiver no ambiente de teste ele vai apagar, se não tiver não tem problema
4. Depois ele vai cadastrar a primeira vez, primeira tentative de cadastro que vai retornar 200, porque acima foi deletado, então é certeza que ele será massa nova no ambiente.
5. Ai ele devolve essa massa de teste para new_user
6. Você tenta fazer um post com a mesma massa acima, e retorna 409, testo duplicado.