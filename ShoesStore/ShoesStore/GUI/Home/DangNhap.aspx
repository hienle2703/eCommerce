﻿<%@ Page Language="C#" Title="Đăng nhập" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="ShoesStore.DangNhap" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="site__body">
        <div class="page-header">
            <div class="page-header__container container">
                <div class="page-header__breadcrumb">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a>
                                <svg class="breadcrumb-arrow"
                                    width="6px" height="9px">
                                    <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                                </svg></li>
                            <li class="breadcrumb-item"><a href="#">Breadcrumb</a>
                                <svg class="breadcrumb-arrow"
                                    width="6px" height="9px">
                                    <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                                </svg></li>
                            <li class="breadcrumb-item active" aria-current="page">My Account</li>
                        </ol>
                    </nav>
                </div>
                <div class="page-header__title">
                    <h1>Đăng nhập</h1>
                </div>
            </div>
        </div>
        <div class="block">
            <div class="container">
                <div class="card-body">
                    <h3 class="card-title">Login</h3>
                    <form>
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="email"
                                class="form-control" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password"
                                class="form-control" placeholder="Password">
                            <small
                                class="form-text text-muted"><a href="#">Forgotten Password</a></small>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <span class="form-check-input input-check"><span
                                    class="input-check__body">
                                    <input class="input-check__input"
                                        type="checkbox" id="login-remember">
                                    <span
                                        class="input-check__box"></span>
                                    <svg
                                        class="input-check__icon" width="9px" height="7px">
                                        <use xlink:href="images/sprite.svg#check-9x7"></use>
                                    </svg>
                                </span></span>
                                <label class="form-check-label"
                                    for="login-remember">
                                    Remember Me</label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary mt-4">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
