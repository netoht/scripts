# Power Options (for Windows 8.1)

1\.Faça sua configuração de plano de energia e salve-o

2\. Abra o CMD e execute os comandos abaixo:

```
c:\> cd \
c:\> powercfg -list
Existing Power Schemes (* Active)
-----------------------------------
Power Scheme GUID: 381b4222-f694-41f0-9685-ff5bb260df2e  (Balanced)
Power Scheme GUID: 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c  (High performance) *
Power Scheme GUID: a1841308-3541-4fab-bc81-f71556f20b4a  (Power saver) 

c:\>powercfg -export c:\HPPowerPlan.pow 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
```

3\. Salve esse arquivo em `c:\` com o nome `HPPowerPlan.bat`

4\. Crie um atalho do arquivo criado em seu `Desktop`

5\. Clique com o botão direito no atalho criado:

```
Propriedades > Aba Shortcut > Advanced... > Marque a opção 'Run as administrator'
```

6\. Clique com o botão direito no atalho criado:

```
Propriedades > Aba Shortcut > Run: Minimized
```

7\. Altere o ícone para: `%SystemRoot%\System32\powercpl.dll`

8\. Adicione o ícone criado no diretório: `%UserProfile%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch`


#### Fontes: 
- https://technet.microsoft.com/en-us/library/cc748940(v=ws.10).aspx
- http://www.sevenforums.com/tutorials/21990-power-plan-create-shortcut-change-power-plan.html
