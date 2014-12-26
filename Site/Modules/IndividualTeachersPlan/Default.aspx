﻿<%@ Page Title="Індивідуальний план викладача" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site.Modules.IndividualTeachersPlan.IndividualTeachersPlan" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="page-header">
        <h1><%=Page.Title %></h1>
    </div>

    <div class="profile">
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#tab1" data-toggle="tab">Наукова діяльність </a></li>
            <li><a href="#tab2" data-toggle="tab">Редагування</a></li>
        </ul>

        <div class="tab-content" style="width: 1000px;">
            <div class="tab-pane active" id="tab1" style="width: 1000px;">
                <div class="row" runat="server" style="margin-left: 1px;">
                    <div class="Nayk_dil">

                        <h2>Наукова  діяльність</h2>

                        <div class="row">
                            <h3>
                                <label>
                                    <input type="checkbox" id="1">
                                    Видання</label></h3>



                            <div id="1b" class="dip_none">


                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="1r">
                                        монографії</label>
                                    <div id="15" class="dip_none">

                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="15r">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <input style="width: 200px;" type="text" id="155" class="dip_none_c" placeholder="Введите текст 1"></label>
                                            </p>
                                        </div>

                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="151">--------
                                            </label>
                                            <p>
                                                <label>
                                                    <input type="text" id="156" class="dip_none_c" placeholder="Введите текст 2"></label>
                                            </p>
                                        </div>

                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="152">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <input type="text" id="157" class="dip_none_C" placeholder="Введите текст 3"></label>
                                            </p>
                                        </div>

                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="153">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <input type="text" id="158" class="dip_none_c" placeholder="Введите текст 4" /></label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="154">
                                                -----</label>
                                            <p>
                                                <label>
                                                    <input type="text" id="159" class="dip_none_C" placeholder="Введите текст 5"></label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="11">
                                        підручники</label>
                                    <div id="16" class="dip_none">
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="16r">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="165" class="dip_none" placeholder="Введите текст 1"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="161">--------
                                            </label>
                                            <p>
                                                <label>
                                                    <textarea id="166" class="dip_none" placeholder="Введите текст 2"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="162">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="167" class="dip_none" placeholder="Введите текст 3"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="163">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="168" class="dip_none" placeholder="Введите текст 4"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="164">
                                                ----------------</label>
                                            <p>
                                                <label>
                                                    <textarea id="169" class="dip_none" placeholder="Введите текст 5"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="12">
                                        словники</label>
                                    <div id="17" class="dip_none">
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="17r">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="175" class="dip_none" placeholder="Введите текст 1"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="171">--------
                                            </label>
                                            <p>
                                                <label>
                                                    <textarea id="176" class="dip_none" placeholder="Введите текст 2"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="172">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="177" class="dip_none" placeholder="Введите текст 3"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="173">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="178" class="dip_none" placeholder="Введите текст 4"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="174">
                                                ----------------</label>
                                            <p>
                                                <label>
                                                    <textarea id="179" class="dip_none" placeholder="Введите текст 5"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="13">
                                        довідники</label>

                                    <div id="18" class="dip_none">
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="18r">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="185" class="dip_none" placeholder="Введите текст 1"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="181">--------
                                            </label>
                                            <p>
                                                <label>
                                                    <textarea id="186" class="dip_none" placeholder="Введите текст 2"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="182">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="187" class="dip_none" placeholder="Введите текст 3"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="183">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="188" class="dip_none" placeholder="Введите текст 4"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="184">
                                                ----------------</label>
                                            <p>
                                                <label>
                                                    <textarea id="189" class="dip_none" placeholder="Введите текст 5"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="14">
                                        електронні наукові видання</label>

                                    <div id="19" class="dip_none">
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="19r">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="195" class="dip_none" placeholder="Введите текст 1"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="191">--------
                                            </label>
                                            <p>
                                                <label>
                                                    <textarea id="196" class="dip_none" placeholder="Введите текст 2"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="192">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="197" class="dip_none" placeholder="Введите текст 3"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="193">
                                                --------</label>
                                            <p>
                                                <label>
                                                    <textarea id="198" class="dip_none" placeholder="Введите текст 4"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label>
                                                <input type="checkbox" id="194">
                                                ----------------</label>
                                            <p>
                                                <label>
                                                    <textarea id="199" class="dip_none" placeholder="Введите текст 5"></textarea>
                                                </label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <h3>
                                <label>
                                    <input type="checkbox" id="2">Статті</label>
                            </h3>
                            <div id="2b" class="dip_none">
                                <div class="col-md-12">
                                    <label>
                                        <input type="checkbox" id="2r">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="25" class="dip_none_C" placeholder="Введите текст 1"></label>
                                    </p>
                                </div>
                                <div class="col-md-12">
                                    <label>
                                        <input type="checkbox" id="21">--------
                                    </label>
                                    <p>
                                        <label>
                                            <input type="text" id="26" class="dip_none_C" placeholder="Введите текст 2"></label>
                                    </p>
                                </div>
                                <div class="col-md-12">
                                    <label>
                                        <input type="checkbox" id="22">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="27" class="dip_none_C" placeholder="Введите текст 3"></label>
                                    </p>
                                </div>
                                <div class="col-md-12">
                                    <label>
                                        <input type="checkbox" id="23">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="28" class="dip_none_C" placeholder="Введите текст 4"></label>
                                    </p>
                                </div>
                                <div class="col-md-12">
                                    <label>
                                        <input type="checkbox" id="24">
                                        ----------------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="29" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                            </div>



                            <h3>
                                <label>
                                    <input type="checkbox" id="3">
                                    Конференції/семінари/симпозіуми
                                </label>
                                <br>
                            </h3>

                            <div id="3b" class="dip_none">

                                <div class="col-md-4">
                                    <label>
                                        <input type="checkbox" id="3r">місце проведення</label>
                                    <p>
                                        <label>
                                            <input type="text" id="35" class="dip_none_C" placeholder="Введите текст 1"></label>
                                    </p>
                                </div>
                                <div class="col-md-4">
                                    <label>
                                        <input type="checkbox" id="31">назва заходу</label>
                                    <p>
                                        <label>
                                            <input type="text" id="36" class="dip_none_C" placeholder="Введите текст 2"></label>
                                    </p>
                                </div>
                                <div class="col-md-4">
                                    <label>
                                        <input type="checkbox" id="32">назва доповіді</label>
                                    <p>
                                        <label>
                                            <input type="text" id="37" class="dip_none_C" placeholder="Введите текст 3"></label>
                                    </p>

                                </div>
                            </div>


                            <h3>
                                <label>
                                    <input type="checkbox" id="4">
                                    Наукові виставки
                                </label>
                                <br>
                            </h3>

                            <div id="4b" class="dip_none">

                                <div class="col-md-4">
                                    <label>
                                        <input type="checkbox" id="4r">місце проведення</label>
                                    <p>
                                        <label>
                                            <input type="text" id="45" class="dip_none_C" placeholder="Введите текст 1"></label>
                                    </p>
                                </div>
                                <div class="col-md-4">
                                    <label>
                                        <input type="checkbox" id="41">назва виставки</label>
                                    <p>
                                        <label>
                                            <input type="text" id="46" class="dip_none_C" placeholder="Введите текст 2"></label>
                                    </p>
                                </div>
                                <div class="col-md-4">
                                    <label>
                                        <input type="checkbox" id="42">назва експонату</label>
                                    <p>
                                        <label>
                                            <input type="text" id="47" class="dip_none_C" placeholder="Введите текст 3"></label>
                                    </p>
                                </div>

                            </div>

                            <h3>
                                <label>
                                    <input type="checkbox" id="5">
                                    Гранти/Проекти/Дослідження
                                </label>
                                <br>
                            </h3>

                            <div id="5b" class="dip_none">

                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="5r">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="55" class="dip_none_C" placeholder="Введите текст 1"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="51">--------
                                    </label>
                                    <p>
                                        <label>
                                            <input type="text" id="56" class="dip_none_C" placeholder="Введите текст 2"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="52">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="57" class="dip_none_C" placeholder="Введите текст 3"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="53">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="58" class="dip_none_C" placeholder="Введите текст 4"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="54">
                                        ----------------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="59" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                            </div>


                            <h3>
                                <label>
                                    <input type="checkbox" id="6">
                                    Авторське свідоцтва/патенти
                                </label>
                                <br>
                            </h3>

                            <div id="6b" class="dip_none">

                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="6r">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="65" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="61">--------
                                    </label>
                                    <p>
                                        <label>
                                            <input type="text" id="66" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="62">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="67" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="63">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="68" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="64">
                                        ----------------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="69" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                            </div>


                            <h3>
                                <label>
                                    <input type="checkbox" id="7">
                                    Експертизи/відгуки/рецензування
                                </label>
                                <br>
                            </h3>


                            <div id="7b" class="dip_none">

                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="7r">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="75" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="71">--------
                                    </label>
                                    <p>
                                        <label>
                                            <input type="text" id="76" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="72">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="77" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="73">
                                        --------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="78" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                                <div class="col-md-2">
                                    <label>
                                        <input type="checkbox" id="74">
                                        ----------------</label>
                                    <p>
                                        <label>
                                            <input type="text" id="79" class="dip_none_C" placeholder="Введите текст 5"></label>
                                    </p>
                                </div>
                            </div>

                        </div>


                    </div>



                    <script>
                        $('#1').click(function () { $('#1b').toggle(); });

                        $('#1r').click(function () { $('#15').toggle(); });

                        $('#15r').click(function () { $('#155').toggle(); });
                        $('#151').click(function () { $('#156').toggle(); });
                        $('#152').click(function () { $('#157').toggle(); });
                        $('#153').click(function () { $('#158').toggle(); });
                        $('#154').click(function () { $('#159').toggle(); });



                        $('#11').click(function () { $('#16').toggle(); });
                        $('#16r').click(function () { $('#165').toggle(); });
                        $('#161').click(function () { $('#166').toggle(); });
                        $('#162').click(function () { $('#167').toggle(); });
                        $('#163').click(function () { $('#168').toggle(); });
                        $('#164').click(function () { $('#169').toggle(); });
                        $('#12').click(function () { $('#17').toggle(); });
                        $('#17r').click(function () { $('#175').toggle(); });
                        $('#171').click(function () { $('#176').toggle(); });
                        $('#172').click(function () { $('#177').toggle(); });
                        $('#173').click(function () { $('#178').toggle(); });
                        $('#174').click(function () { $('#179').toggle(); });
                        $('#13').click(function () { $('#18').toggle(); });
                        $('#18r').click(function () { $('#185').toggle(); });
                        $('#181').click(function () { $('#186').toggle(); });
                        $('#182').click(function () { $('#187').toggle(); });
                        $('#183').click(function () { $('#188').toggle(); });
                        $('#184').click(function () { $('#189').toggle(); });
                        $('#14').click(function () { $('#19').toggle(); });
                        $('#19r').click(function () { $('#195').toggle(); });
                        $('#191').click(function () { $('#196').toggle(); });
                        $('#192').click(function () { $('#197').toggle(); });
                        $('#193').click(function () { $('#198').toggle(); });
                        $('#194').click(function () { $('#199').toggle(); });



                        $('#2').click(function () { $('#2b').toggle(); });

                        $('#2r').click(function () { $('#25').toggle(); });
                        $('#21').click(function () { $('#26').toggle(); });
                        $('#22').click(function () { $('#27').toggle(); });
                        $('#23').click(function () { $('#28').toggle(); });
                        $('#24').click(function () { $('#29').toggle(); });

                        $('#3').click(function () { $('#3b').toggle(); });

                        $('#3r').click(function () { $('#35').toggle(); });
                        $('#31').click(function () { $('#36').toggle(); });
                        $('#32').click(function () { $('#37').toggle(); });


                        $('#4').click(function () { $('#4b').toggle(); });

                        $('#4r').click(function () { $('#45').toggle(); });
                        $('#41').click(function () { $('#46').toggle(); });
                        $('#42').click(function () { $('#47').toggle(); });


                        $('#5').click(function () { $('#5b').toggle(); });

                        $('#5r').click(function () { $('#55').toggle(); });
                        $('#51').click(function () { $('#56').toggle(); });
                        $('#52').click(function () { $('#57').toggle(); });
                        $('#53').click(function () { $('#58').toggle(); });
                        $('#54').click(function () { $('#59').toggle(); });

                        $('#6').click(function () { $('#6b').toggle(); });

                        $('#6r').click(function () { $('#65').toggle(); });
                        $('#61').click(function () { $('#66').toggle(); });
                        $('#62').click(function () { $('#67').toggle(); });
                        $('#63').click(function () { $('#68').toggle(); });
                        $('#64').click(function () { $('#69').toggle(); });

                        $('#7').click(function () { $('#7b').toggle(); });

                        $('#7r').click(function () { $('#75').toggle(); });
                        $('#71').click(function () { $('#76').toggle(); });
                        $('#72').click(function () { $('#77').toggle(); });
                        $('#73').click(function () { $('#78').toggle(); });
                        $('#74').click(function () { $('#79').toggle(); });
                    </script>
                </div>

            </div>



            <div class="tab-pane" id="tab2" style="height: 200px">
                -
            </div>

        </div>
    </div>
</asp:Content>

