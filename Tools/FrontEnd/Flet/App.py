import flet as ft 


# Cria a função que gera a tela 

# def main(page: ft.Page):
#     page.title = "Sistema validação de Notas BNDS !"
#     page.vertical_alignment = ft.MainAxisAlignment.CENTER

#     txt_number = ft.TextField(value="0", text_align=ft.TextAlign.RIGHT, width=50)

#     def minus_click(e):
#         txt_number.value = str(int(txt_number.value) - 1)
#         page.update()
#     tela = ft.text("Seja bem-vindo ao Sistema BNDS")
#     page.controls.append(tela)
#     page.update

# ft.app(target=main)   
# 
# 
#  import flet as ft

# def main(page: ft.Page):
#     t = ft.Text(value="Sistema validação de Notas BNDS !", color="Red")
#     page.controls.append(t)
#     page.update()

# ft.app(main)

# --------------------------------------------------------------------------

# import flet as ft

# def main(page):
#     def add_clicked(e):
#         page.add(ft.Checkbox(label=new_task.value))
#         new_task.value = ""
#         new_task.focus()
#         new_task.update()

#     new_task = ft.TextField(hint_text="O que você precisa fazer", width=300)
#     page.add(ft.Row([new_task, ft.ElevatedButton("Adicionar", on_click=add_clicked)]))

# ft.app(main)

# import flet as ft

# def main(page: ft.Page):
#     page.title = "BNDS Sistema "
#     page.vertical_alignment = ft.MainAxisAlignment.CENTER

#     txt_number = ft.TextField(value="0", text_align="right", width=100)

#     def minus_click(e):
#         txt_number.value = str(int(txt_number.value) - 1)
#         page.update()

#     def plus_click(e):
#         txt_number.value = str(int(txt_number.value) + 1)
#         page.update()

#     page.add(
#         ft.Row(
#             [
#                 ft.IconButton(ft.Icons.REMOVE, on_click=minus_click),
#                 txt_number,
#                 ft.IconButton(ft.Icons.ADD, on_click=plus_click),
#             ],
#             alignment=ft.MainAxisAlignment.CENTER,
#         )
#     )

# ft.app(main)

import flet as ft

def main(page):
    def btn_click(e):
        if not txt_name.value:
            txt_name.error_text = "Please enter your name"
            page.update()
        else:
            name = txt_name.value
            page.clean()
            page.add(ft.Text(f"Hello, {name}!"))

    txt_name = ft.TextField(label="Importações Nota Fiscal")

    page.add(txt_name, ft.ElevatedButton("Enviar Arquivos", on_click=btn_click))

ft.app(main)
