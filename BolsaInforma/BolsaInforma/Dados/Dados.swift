//  Dados.swift
//  BolsaInforma
//
//  Created by found on 13/09/24.
import Foundation
struct Dados {
    
    var dados = [
//        "Tipo": ["Extensão", "Pesquisa"],
//        "Área de Atuação": ["Computação": ["Informática", "Telecomunicações"], "Ensino"],
        
        "Apple Academy Foundation": [
                    Textos(nome: "Extensão", textos: []),
                    Textos(nome: "Prazo de inscrições", textos: [
                        Texto(texto: "30/06 10h às 18h")
                    ]),
                    Textos(nome: "Resumo", textos: [
                        Texto(texto: "Tem por finalidade a oferta de vagas para o curso de extensão IOS foundation, na modalidade presencial.")
                    ]),
                    Textos(nome: "Requisitos", textos: [
                        Texto(texto: "Poderão candidatar-se para as vagas constantes no presente Edital:\n- Jovens e Adultos com interesse em aprender sobre desenvolvimento para plataformas Apple.\n- Pessoas que já tenham conhecimento básico de informatiinformática e programação.")
                    ]),
                    Textos(nome: "Informações adicionais", textos: [
                        Texto(texto: "São objetivos específicos do curso: Formação introdutória de estudantes em desenvolvimento de aplicativos para plataformas Apple com Swift."),
                        Texto(texto: "Proporcionar experiências de aprendizado diferenciadas em termos de Infraestrutura laboratorial e metodologias de ensino modernas.")
                    ])
                ],
                "PIBIC": [
                    Textos(nome: "Pesquisa", textos: [
                    ]),
                    Textos(nome: "Prazo de inscrições", textos: [
                        Texto(texto: "Tem por finalidade a oferta de vagas para o curso de extensão IOS foundation, na modalidade presencial.")
                    ]),
                    Textos(nome: "Resumo", textos: [
                        Texto(texto: "Tem por finalidade a oferta de vagas para o curso de extensão IOS foundation, na modalidade presencial.")
                    ]),
                    Textos(nome: "Requisitos", textos: [
                        Texto(texto: "Poderão candidatar-se para as vagas constantes no presente Edital:\n- Jovens e Adultos com interesse em aprender sobre desenvolvimento para plataformas Apple.\n- Pessoas que já tenham conhecimento básico de informatiinformática e programação.")
                    ]),
                    Textos(nome: "Informações adicionais", textos: [
                        Texto(texto: "São objetivos específicos do curso: Formação introdutória de estudantes em desenvolvimento de aplicativos para plataformas Apple com Swift."),
                        Texto(texto: "Proporcionar experiências de aprendizado diferenciadas em termos de Infraestrutura laboratorial e metodologias de ensino modernas.")
                    ])
                ],
                "Mentoria Huawei": [
                    Textos(nome: "Extensão", textos: []),
                    Textos(nome: "Prazo de inscrições", textos: [
                        Texto(texto: "20/02 a 01/03")
                    ]),
                    Textos(nome: "Resumo", textos: [
                        Texto(texto: "O programa de mentoria destina-se a alunos devidamente matriculados no IFCE que desejam ampliar seus conhecimentos na área da tecnologia por meio de um programa de mentoria. Este programa visa ensinar e capacitar pessoas interessadas para o mercado de trabalho, passando pelo aprendizado em seis áreas de conteúdo: Design, Programação,Modelagem 3D, Datacom, Cloud e Computing. Além disso, os participantes terão a oportunidade de realizar um período de voluntariado no Laboratório Huawei ICT Academy.")
                    ]),
                    Textos(nome: "Requisitos", textos: [
                        Texto(texto: "Os candidatos serão selecionados com base na sua adequação aos requisitos do programa e na disponibilidade de vagas.")
                    ]),
                    Textos(nome: "Informações adicionais", textos: [
                        Texto(texto: "Será disponibilizado como forma de inscrição um formulário, para que a mesma seja devidamente efetuada. O formulário de inscrição conterá para envio: Algumas informações pessoais                                                                    - O Horário Individual do respectivo semestre.                                                                                  - Documentos: RG, CPF e Comprovante de matrícula no IFCE no respectivo semestre.                                                - Desafio de Criatividade"),
                        Texto(texto: "Proporcionar experiências de aprendizado diferenciadas em termos de Infraestrutura laboratorial e metodologias de ensino modernas.")
                    ])
                ],
        "Auxílio Óculos": [
                    Textos(nome: "Prazo de inscrições", textos: [
                        Texto(texto: "02/04 até 20/11")
                    ]),
                    Textos(nome: "Resumo", textos: [
                        Texto(texto: "Subsidia despesas para aquisição de óculos e/ou lentes para corrigir distorções ópticas.")
                    ]),
                    Textos(nome: "Requisitos", textos: [
                        Texto(texto: "Frequência regular da matrícula e das aulas;"),
                        Texto(texto: "Apresentar caracterização socioeconômica;"),
                        Texto(texto: "Comprovar a necessidade de uso de óculos/lentes, por meio da apresentação de prescrição médico-oftalmológica, com validade de até 6 (seis) meses.")
                    ]),
                    Textos(nome: "Informações adicionais", textos: [
                        Texto(texto: "Para realizar a solicitação do auxílio óculos/lentes corretivas, os estudantes deverão realizar inscrição no SISAE e apresentar a documentação geral obrigatória, a documentação geral classificatória e a documentação específica obrigatória, de acordo com o edital.")
                    ])
                ]
        ,
        "Aprenda Certo": [
                    Textos(nome: "Cursos", textos: [
                        Texto(texto: "Sem requisitos.")
                    ]),
                    Textos(nome: "Requisitos", textos: [
                        Texto(texto: "Conhecimentos básicos no desenvolvimento de aplicativos iOS utilizando Swift."),
                        Texto(texto: "Habilidade para trabalhar em equipe e comunicar-se de forma eficaz."),
                        Texto(texto: "Capacidade de resolver problemas de forma criativa e proativa."),
                    ]),
                    Textos(nome: "Funções", textos: [
                        Texto(texto: "Participar ativamente no desenvolvimento e manutenção de aplicativos iOS, utilizando a linguagem Swift."),
                        Texto(texto: "Colaborar com a equipe de desenvolvimento para implementar novas funcionalidades e melhorar a experiência do usuário."),
                        Texto(texto: "Auxiliar na resolução de bugs e problemas técnicos, garantindo a qualidade e estabilidade dos aplicativos."),
                        Texto(texto: "Documentar o código e os processos de desenvolvimento de forma clara e organizada.")
                    ]),
                    Textos(nome: "Benefícios", textos: [
                        Texto(texto: "Salário: R$ 1.500,00;"),
                        Texto(texto: "Adicional: Cartão Caju no valor de R$ 577,50 mensais."),
                    ]),
                    Textos(nome: "Carga Horária", textos: [
                        Texto(texto: "De segunda à sexta-feira, das 09:00 às 16:00h"),
                        
                    ]),
                    Textos(nome: "Contatos", textos: [
                        Texto(texto: "Email para envio do currículo: rh@aprendacerto.com.br"),
                        
                    ])
                ]




    ]
    
}


