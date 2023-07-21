import {
    u as se,
    o as y,
    c as w,
    a as d,
    t as J,
    b as j,
    F as ce,
    r as ie,
    n as ue,
    d as le,
    e as xe,
    f as T,
    g as D,
    h as de,
    w as fe,
    i as $,
    j as me,
    v as ge,
    k as We,
    l as pe,
    m as he,
    p as ke,
    q as ve,
    s as V,
    x as be,
    y as ye
} from "./vendor-ddda2d6a.js";
(function() {
    const b = document.createElement("link").relList;
    if (b && b.supports && b.supports("modulepreload")) return;
    for (const e of document.querySelectorAll('link[rel="modulepreload"]')) t(e);
    new MutationObserver(e => {
        for (const n of e)
            if (n.type === "childList")
                for (const a of n.addedNodes) a.tagName === "LINK" && a.rel === "modulepreload" && t(a)
    }).observe(document, {
        childList: !0,
        subtree: !0
    });

    function C(e) {
        const n = {};
        return e.integrity && (n.integrity = e.integrity), e.referrerpolicy && (n.referrerPolicy = e.referrerpolicy), e.crossorigin === "use-credentials" ? n.credentials = "include" : e.crossorigin === "anonymous" ? n.credentials = "omit" : n.credentials = "same-origin", n
    }

    function t(e) {
        if (e.ep) return;
        e.ep = !0;
        const n = C(e);
        fetch(e.href, n)
    }
})();
const we = {
        key: 0,
        class: "mt-3"
    },
    _e = d("span", {
        class: "rounded px-1 py-0.5 border text-xs font-bold bg-yellow-400 border-yellow-400 text-gray-800"
    }, "Ad", -1),
    Ce = d("span", {
        class: "px-1 font-bold"
    }, " ·", -1),
    Se = ["href"],
    Ie = {
        __name: "Ad",
        setup(W) {
            const b = localStorage.getItem("api_key");
            return (C, t) => !se(b) && C.$window.show_ads ? (y(), w("div", we, [_e, Ce, d("a", {
                href: C.$window.promot_link,
                target: "_blank",
                class: "text-green-700 hover:text-green-600 transition"
            }, J(C.$window.promot_text), 9, Se)])) : j("", !0)
        }
    },
    Re = {
        class: "my-4 px-4 sm:px-6"
    },
    Ke = {
        class: "bg-white dark:bg-gray-900"
    },
    je = {
        key: 0,
        class: "border dark:border-gray-900 rounded-md"
    },
    qe = {
        key: 0,
        class: "flex flex-row py-4 px-4 sm:px-8 font-semibold text-gray-700 dark:text-gray-300 bg-neutral-100 dark:bg-gray-900 items-center"
    },
    Ae = d("span", {
        class: "pr-4 grow-0 shrink-0 w-10 sm:w-12"
    }, [
      d("img", {
        src: "https://sv3.anh365.com/images/2023/04/28/Picsart_23-04-28_23-49-53-802.png",
        alt: "Ảnh của tôi",
        class: "rounded-full w-8 h-8 avatar"
    }),
    d("span", {
        class: "ml-2"
    },
    "Tôi:", -1),
    ]),
    ze = {
        class: "grow dark:text-gray-300"
    },
    Fe = ["onClick"],
    Me = {
        key: 1,
        class: "px-4 sm:px-8 py-4 flex flex-row text-gray-700 dark:text-gray-300 bg-white dark:bg-gray-800"
    },
    Je = d("span", {
        class: "font-semibold pr-4 grow-0 shrink-0 w-10 sm:w-12"
    },[ 
      d("img", {
        src: "https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg",
        alt: "AI Photo",
        class: "rounded-full w-8 h-8 avatar"
    }),
     d("span", {
        class: "ml-2"
    },
    "", -1),
    ]),
    Oe = {
        class: "grow whitespace-pre-wrap"
    },
    Te = {
        key: 0
    },
    Ne = {
        key: 1
    },
    Ge = {
        key: 2
    },
    Le = {
        key: 3,
        class: "blink"
    },
    $e = ["onClick"],
    Ee = {
        key: 1,
        class: "py-24"
    },
    Be = d("svg", {
        xmlns: "http://www.w3.org/2000/svg",
        width: "1280",
        height: "314.982",
        viewBox: "0 0 338.667 83.339",
        "xmlns:v": "https://vecta.io/nano",
        class: "w-40 mx-auto h-24"
    }, [d("path", {
        d: "M200.154 32.427v.028c-.169 0-.339.028-.508.028s-.339-.028-.508-.028c-10.075 0-16.312 6.294-16.312 16.397v4.967c0 9.736 6.322 15.776 16.453 15.776a4.38 4.38 0 0 0 .621-.028c.141 0 .254.028.395.028 6.801 0 11.543-2.483 14.562-7.62l-6.011-3.472c-2.004 2.963-4.685 5.193-8.523 5.193-5.136 0-8.212-3.161-8.212-8.495V53.79h23.819v-5.87c0-9.426-6.18-15.494-15.776-15.494zm-.508 5.786c4.685.226 7.507 3.33 7.507 8.438v1.411h-15.07v-.819c0-5.644 2.681-8.805 7.563-9.031zm-36.998-5.758c-4.487 0-8.353 1.863-10.385 4.967l-.508.79v-4.911h-8.523v47.667h8.946v-16.65l.508.762c1.919 2.85 5.673 4.543 10.047 4.543h.226.197c7.366 0 14.788-4.798 14.788-15.55v-6.039c0-7.733-4.572-15.55-14.845-15.55l-.056-.028h-.197zm-2.088 6.717c5.193.085 8.41 3.612 8.41 9.257v5.192c0 5.644-3.246 9.144-8.495 9.257-4.882-.085-8.297-3.81-8.297-9.116v-5.334c0-5.362 3.443-9.144 8.382-9.257zm115.934-18.485l-17.215 48.09h9.68l3.302-10.301h18.795v.113l3.302 10.216h9.68l-17.243-48.09h-1.016l-.028-.028zm5.137 8.269l7.196 22.719h-14.45zm57.035-1.496v-6.773h-29.52v6.773h10.357v34.487h-10.357v6.773h29.52v-6.773h-10.357V27.46zm-97.139 4.996h-.254-.141c-4.995 0-8.551 1.693-10.301 4.939l-.536.988v-5.08h-8.523v35.446h8.946v-21.11c0-4.967 2.681-7.817 7.309-7.902 4.431.085 6.971 2.879 6.971 7.705v21.307h8.946V45.917c0-8.438-4.628-13.462-12.389-13.462zM114.473 19.699c-13.18 0-21.392 8.213-21.392 21.449v7.14c0 13.236 8.184 21.448 21.392 21.448h.198.197c13.18 0 21.392-8.212 21.392-21.448v-7.14c0-13.236-8.212-21.449-21.392-21.449h-.197zm.198 7.169c7.846.085 12.361 5.108 12.361 13.8v8.128c0 8.692-4.515 13.716-12.361 13.8-7.846-.085-12.362-5.108-12.362-13.8v-8.128c0-8.692 4.516-13.716 12.362-13.8zM36.751.001c-9.116 0-17.215 5.87-20.038 14.534A20.83 20.83 0 0 0 2.828 24.61C-1.744 32.512-.7 42.446 5.425 49.219 3.534 54.892 4.183 61.1 7.203 66.237c4.544 7.93 13.687 11.994 22.634 10.103a20.78 20.78 0 0 0 15.635 6.999c9.116 0 17.215-5.87 20.038-14.534 5.87-1.214 10.922-4.883 13.857-10.075 4.6-7.902 3.556-17.836-2.568-24.609v-.028a20.76 20.76 0 0 0-1.778-17.046C70.476 9.145 61.332 5.08 52.414 6.971A20.86 20.86 0 0 0 36.751.001zm0 5.419l-.028.028c3.669 0 7.197 1.27 10.019 3.613-.113.056-.339.197-.508.282L29.64 18.91c-.847.48-1.355 1.383-1.355 2.371v22.464l-7.14-4.12v-18.57A15.63 15.63 0 0 1 36.751 5.419zm19.99 6.54a15.62 15.62 0 0 1 13.566 7.825c1.806 3.161 2.483 6.858 1.862 10.442-.113-.085-.338-.197-.48-.282l-16.594-9.596a2.78 2.78 0 0 0-2.737 0L32.913 31.581V23.34l16.058-9.285a15.54 15.54 0 0 1 7.77-2.096zm-41.043 8.53v19.727c0 .988.508 1.863 1.355 2.371l19.416 11.204L29.3 57.94l-16.03-9.257a15.63 15.63 0 0 1-5.7-21.336 15.65 15.65 0 0 1 8.128-6.858zm37.196 4.882l16.058 9.257c7.479 4.318 10.018 13.857 5.7 21.336l.028.028c-1.834 3.161-4.713 5.588-8.128 6.83V43.095c0-.988-.508-1.891-1.355-2.37L45.753 29.492zm-11.797 6.802l8.185 4.741v9.454l-8.185 4.741-8.184-4.741v-9.454zm12.869 7.451l7.14 4.12v18.542c0 8.636-6.999 15.635-15.606 15.635v-.028c-3.641 0-7.197-1.27-9.991-3.612.113-.056.367-.198.508-.283l16.594-9.567c.847-.48 1.383-1.383 1.354-2.371zM49.309 51.76V60l-16.058 9.257c-7.479 4.29-17.018 1.75-21.336-5.701h.028c-1.834-3.133-2.484-6.858-1.863-10.442.113.085.339.197.48.282l16.594 9.596a2.78 2.78 0 0 0 2.737 0z"
    })], -1),
    Pe = d("div", {
        class: "text-center text-gray-500 px-12"
    }, "Operated and Developed by Đỗ Minh Trí", -1),
    He = [Be, Pe],
    De = {
        __name: "Dialogs",
        props: {
            messages: Array,
            loading: Boolean
        },
        setup(W) {
            const b = C => {
                xe(C)
            };
            return (C, t) => (y(), w("section", Re, [d("div", Ke, [W.messages.length ? (y(), w("div", je, [(y(!0), w(ce, null, ie(W.messages, (e, n) => (y(), w("div", {
                class: ue(["dark:border-gray-900", n === W.messages.length - 1 ? "" : "border-b"]),
                key: n
            }, [e.who === "ME" ? (y(), w("div", qe, [Ae, d("span", ze, J(e.message.trim()), 1), d("span", {
                class: "grow-0 shrink-0 w-10 sm:w-12 text-right font-normal text-gray-400 active:text-gray-500 dark:text-gray-500 active:dark:text-gray-600 text-sm",
                onClick: a => b(e.message.trim())
            }, "Sao chép", 8, Fe)])) : j("", !0), e.who === "AI" ? (y(), w("div", Me, [Je, d("div", Oe, [d("div", null, [n !== W.messages.length - 1 && e.message.trim().length === 0 ? (y(), w("span", Te, " Vận hành bởi DuckNha ")) : j("", !0), !W.loading && n === W.messages.length - 1 && e.message.trim().length === 0 ? (y(), w("span", Ne, " Vận hành bởi DuckNha ")) : (y(), w("span", Ge, J(e.message.trim()), 1)), W.loading && n === W.messages.length - 1 ? (y(), w("span", Le)) : (y(), le(Ie, {
                key: 4
            }))])]), W.loading && n === W.messages.length - 1 ? j("", !0) : (y(), w("span", {
                key: 0,
                class: "grow-0 shrink-0 w-10 sm:w-12 text-right font-normal text-gray-400 active:text-gray-500 dark:text-gray-500 active:dark:text-gray-600 text-sm",
                onClick: a => b(e.message.trim())
            }, "Sao chép", 8, $e))])) : j("", !0)], 2))), 128))])) : (y(), w("div", Ee, He))])]))
        }
    },
    Qe = {
        class: "relative py-20 sm:py-24 bg-white dark:bg-gray-800"
    },
    Ve = {
        class: "max-w-5xl mx-auto"
    },
    Ze = ["onSubmit"],
    Xe = d("button", {
        type: "submit",
        class: "mx-2 sm:mx-4 px-3 py-2 text-sm font-medium tracking-wide text-white capitalize transition-colors duration-300 transform bg-blue-700 rounded-md hover:bg-blue-600 focus:outline-none focus:bg-blue-600 whitespace-nowrap"
    }, " Cài đặt ", -1),
    Ue = {
        key: 0,
        class: "text-gray-500 px-4 sm:px-6 pt-1 flex flex-row items-center text-sm dark:text-gray-400"
    },
    Ye = {
        class: "pl-1 sm:pl-2"
    },
    et = d("span", null, "Tổng cộng:", -1),
    tt = {
        class: "ml-3"
    },
    nt = d("span", null, "Đã sử dụng:", -1),
    rt = {
        class: "ml-3"
    },
    ot = d("span", null, "Còn lại:", -1),
    at = {
        key: 1,
        class: "text-gray-500 px-4 sm:px-6 pt-1 flex flex-row items-center text-sm dark:text-gray-400"
    },
    st = d("span", null, "Nếu phát hiện spam tôi sẽ ra chức năng delay 120s/1 lần chat", -1),
    ct = {
        key: 0
    },
    it = {
        key: 1
    },
    ut = {
        key: 2
    },
    lt = {
        class: "fixed bottom-0 left-0 right-0 py-3 bg-gray-100 border-t flex items-center justify-center dark:bg-gray-800 dark:border-t-gray-900"
    },
    xt = ["onSubmit"],
    dt = ["onClick"],
    ft = d("svg", {
        height: "800px",
        width: "800px",
        version: "1.1",
        id: "Layer_1",
        xmlns: "http://www.w3.org/2000/svg",
        "xmlns:xlink": "http://www.w3.org/1999/xlink",
        viewBox: "0 0 482.827 482.827",
        "xml:space": "preserve",
        class: "w-4 h-4"
    }, [d("path", {
        d: `M241.413,0C171.855,0,106.16,30.011,60.606,81.465v-81.1H40.913v119.433h119.433v-19.692H70.671
			c41.954-50.628,104.403-80.413,170.743-80.413c122.26,0,221.721,99.462,221.721,221.721s-99.462,221.721-221.721,221.721
			S19.692,363.673,19.692,241.413c0-18.471,2.279-36.851,6.779-54.625l-19.096-4.827C2.481,201.313,0,221.317,0,241.413
			c0,133.115,108.298,241.413,241.413,241.413s241.413-108.298,241.413-241.413S374.529,0,241.413,0z`
    })], -1),
    mt = [ft],
    gt = ["value"],
    Wt = d("button", {
        class: "px-4 py-2 text-sm font-medium tracking-wide text-white capitalize transition-colors duration-300 transform bg-blue-700 rounded-md hover:bg-blue-600 focus:outline-none focus:bg-blue-600 whitespace-nowrap",
        type: "submit"
    }, " Gửi ", -1),
    pt = {
        __name: "App",
        setup(W) {
            const b = T(null),
                {
                    proxy: C
                } = ve(),
                t = D([]),
                e = T(!1),
                n = T(""),
                a = T(""),
                o = D({
                    total_available: 0,
                    total_granted: 0,
                    total_used: 0
                }),
                r = T(!1),
                m = () => {
                    location.reload()
                },
                h = async () => {
                    const l = await he({
                        url: "https://api.openai.com/dashboard/billing/credit_grants",
                        headers: {
                            "Content-Type": "application/json",
                            Authorization: `Bearer ${a.value}`
                        }
                    }).then(x => x.data);
                    o.total_available = parseFloat(l.total_available).toFixed(2), o.total_used = parseFloat(l.total_used).toFixed(2), o.total_granted = parseFloat(l.total_granted).toFixed(2)
                }, p = () => {
                    a.value ? (localStorage.setItem("api_key", a.value), h()) : (localStorage.removeItem("api_key"), o.total_available = 0, o.total_used = 0, o.total_granted = 0)
                };
            de(() => {
                const l = localStorage.getItem("api_key"),
                    x = localStorage.getItem("dark_mode");
                x && (e.value = x === "true"), l && (a.value = l, h())
            });
            const k = () => {
                if (r.value) return;
                const l = +localStorage.getItem("last_call");
                if (!a.value && l && rate_limit && Date.now() - +l < rate_limit * 1) {
                    C.$toast.show("Để ngăn chặn lạm dụng, chúng tôi đã giới hạn gửi liên tục.", {
                        type: "warning",
                        maxToasts: 1,
                        duration: 6e3
                    });
                    return
                }
                r.value = !0, t.push({
                    who: "ME",
                    message: n.value
                }, {
                    who: "AI",
                    message: ""
                }), ke(() => {
                    b.value.scrollIntoView({
                        smooth: !0
                    })
                });
                const x = t.filter(u => !!u.message).map(u => ({
                    role: u.who === "ai" ? "assistant" : "user",
                    content: u.message.trim()
                }));
                fetch("https://api.openai.com/v1/chat/completions", {
                    method: "POST",
                    body: JSON.stringify({
                        model: "gpt-3.5-turbo",
                        max_tokens: 2048,
                        top_p: 0,
                        temperature: .2,
                        frequency_penalty: 0,
                        presence_penalty: 0,
                        messages: x,
                        stream: !0
                    }),
                    headers: {
                        "Content-Type": "application/json",
                        Authorization: `Bearer ${a.value||my_api_key}`
                    }
                }).then(u => {
                    if (u.status === 200) return u.body;
                    throw u
                }).then(u => {
                    const f = u.getReader();
                    return new ReadableStream({
                        start(v) {
                            function S() {
                                f.read().then(({
                                    done: I,
                                    value: g
                                }) => {
                                    if (I) {
                                        console.log("done", I), b.value.scrollIntoView({
                                            smooth: !0
                                        }), v.close();
                                        return
                                    }
                                    v.enqueue(g);
                                    const q = new TextDecoder().decode(g);
                                    try {
                                        const M = q.split("data:").filter(z => !!z.trim() && z.trim() !== "[DONE]").map(z => JSON.parse(z)).map(z => z.choices[0].delta.content).join(""),
                                            O = t[t.length - 1];
                                        O.message += M, b.value.scrollIntoView({
                                            smooth: !0
                                        })
                                    } catch (R) {
                                        console.error(R)
                                    }
                                    S()
                                })
                            }
                            S()
                        }
                    })
                }).then(u => new Response(u, {
                    headers: {
                        "Content-Type": "text/html"
                    }
                }).text()).then(u => {
                    r.value = !1, localStorage.setItem("last_call", Date.now())
                }).catch(u => {
                    console.log(u);
                    const f = t[t.length - 1];
                    switch (u.status) {
                        case 401: {
                            f.message = "Lỗi api liên hệ: Đỗ Minh Trí";
                            break
                        }
                        case 403: {
                            f.message = "không truy cập";
                            break
                        }
                        case 404: {
                            f.message = "không tìm thấy";
                            break
                        }
                        case 429: {
                            f.message = "Đã đạt đến giới hạn yêu cầu, vui lòng nghỉ ngơi";
                            break
                        }
                        default: {
                            console.log(u), f.message = "Lỗi không xác định, vui lòng tải lại trang và thử lại.";
                            // console.log(u), f.message = "Lỗi " + u.message;
                            break
                        }
                    }
                    r.value = !1, localStorage.setItem("last_call", Date.now())
                }), n.value = ""
            };
            return fe(e, l => {
                localStorage.setItem("dark_mode", l), l ? document.documentElement.classList.add("dark") : document.documentElement.classList.remove("dark")
            }), (l, x) => (y(), w("div", null, [d("div", Qe, [d("div", Ve, [d("form", {
                class: "px-4 sm:px-6 flex flex-row items-center justify-between",
                onSubmit: $(p, ["prevent"])
            }, 40, Ze), a.value && o.total_granted ? (y(), w("div", Ue, [d("div", Ye, [et, d("span", null, "$" + J(o.total_granted), 1)]), d("div", tt, [nt, d("span", null, "$" + J(o.total_used), 1)]), d("div", rt, [ot, d("span", null, "$" + J(o.total_available), 1)])])) : j("", !0), !a.value && l.$window.my_api_key ? (y(), w("div", at, [st, l.$window.show_ads || l.$window.rate_limit ? (y(), w("span", ct, ".")) : j("", !0), l.$window.rate_limit ? (y(), w("span", it, "","")) : j("", !0), l.$window.show_ads ? (y(), w("span", ut, "")) : j("", !0), We("")])) : j("", !0), pe(De, {
                messages: t,
                loading: r.value
            }, null, 8, ["messages", "loading"]), d("div", {
                ref_key: "placeholder",
                ref: b
            }, null, 512), d("div", lt, [d("form", {
                onSubmit: $(k, ["prevent"]),
                class: "flex-grow flex flex-row justify-center items-center max-w-5xl pl-2 pr-4 sm:pl-4 sm:pr-6"
            }, [d("button", {
                type: "button",
                class: "pl-2 pr-3 py-2 text-sm font-medium tracking-wide text-gray-500 dark:text-gray-300 focus:outline-none whitespace-nowrap",
                onClick: $(m, ["prevent"])
            }, mt, 8, dt), d("input", {
                type: "text",
                class: "px-4 py-2 text-gray-700 bg-white border rounded-md mr-2 sm:mr-4 dark:bg-gray-900 dark:text-gray-300 dark:border-gray-600 focus:border-blue-400 dark:focus:border-blue-300 focus:outline-none focus:ring focus:ring-blue-300 focus:ring-opacity-40 flex-grow",
                placeholder: "Send a message",
                value: n.value,
                onInput: x[1] || (x[1] = u => n.value = u.target.value)
            }, null, 40, gt), Wt], 40, xt)])])])]))
        }
    };
window.Alpine = V;
V.start();
if ({}.VITE_GUARD) {
    let W = function(t, e) {
            var n = b();
            return W = function(a, o) {
                a = a - 172;
                var r = n[a];
                if (W.NjYntt === void 0) {
                    var m = function(x) {
                            for (var u = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=", f = "", v = "", S = 0, I, g, q = 0; g = x.charAt(q++); ~g && (I = S % 4 ? I * 64 + g : g, S++ % 4) ? f += String.fromCharCode(255 & I >> (-2 * S & 6)) : 0) g = u.indexOf(g);
                            for (var R = 0, M = f.length; R < M; R++) v += "%" + ("00" + f.charCodeAt(R).toString(16)).slice(-2);
                            return decodeURIComponent(v)
                        },
                        h = function(x, u) {
                            var f = [],
                                v = 0,
                                S, I = "";
                            x = m(x);
                            var g;
                            for (g = 0; g < 256; g++) f[g] = g;
                            for (g = 0; g < 256; g++) v = (v + f[g] + u.charCodeAt(g % u.length)) % 256, S = f[g], f[g] = f[v], f[v] = S;
                            g = 0, v = 0;
                            for (var q = 0; q < x.length; q++) g = (g + 1) % 256, v = (v + f[g]) % 256, S = f[g], f[g] = f[v], f[v] = S, I += String.fromCharCode(x.charCodeAt(q) ^ f[(f[g] + f[v]) % 256]);
                            return I
                        };
                    W.nBrbRe = h, t = arguments, W.NjYntt = !![]
                }
                var p = n[0],
                    k = a + p,
                    l = t[k];
                return l ? r = l : (W.bKPhyi === void 0 && (W.bKPhyi = !![]), r = W.nBrbRe(r, o), t[k] = r), r
            }, W(t, e)
        },
        b = function() {
            var t = function() {
                return [E, "TnjQsqjXqHixamTqiO.tdcNNoXSHmT.GvYq7yRAR==", "pSo3WQ0BWRG", "WRhdGSoYiCkJ", "sIH4W61h", "W4XEWRRdOSkS", "nCo7qeu9", "WRNdUhi8oIz0", "W7Lbr8kYWPpdLmkXm3S4W4iem3NdQMbGaeuaW5lcGCkWDxRcT8o2w8oMWP/cISoRm8kvWP3dLI4qWPa/wabcW70bW4tcUCkza8o6CrNcRZBcTCkzDGOzkSoJxa", "kwZcVmoLW6a8", "emkvrSk8EW", "zmocoSkcW6K", "xqWo", "hmoQBh1k", "WRb+wSkMW6e", "W6SZmctdQq", "W5tdJvNdJmoIgmon", "W67cS8o9WRSo", "WPWhWOpcQmoM", "oSkqeCo3Dq", "tCocWRxdHM0", "rGeNW6VdNq", "mSoCWPpcHtvJW4ldMM3dNSkj", "xmkBC8kTga", "W4qTtetdGG", "hSkSW4tdS8kW", "W43dKqNdICou", "W4D+cCo9W50", "WR3dVmkdWRNcMG", "WOyRAs1gyNKMAG", "W7zEDCkxWPi", "W4FdMfNdJmo6", "W4pcIZahca", "FHukW4JdOG", "WR0vheHS", "BZ8jW7JdNa", "W6JcR8o5WROn", "W57dMw80mW", "W4pcPa8Wda", "ymk1D8kRlW", "W4SLpWhdOW", "WOH1dbLh", "m8o7qtGy", "WPtdGmoreSky", "WR7dS8k0W688wGLnWQmF", "ACodwaNdH8kcW68YWRHvegzCdHyh", "W4TQECkT", "zmk/W4RcNZy", "tSowW6RcLmkvCSoju8oyW5O3bqJcLmoRW7rdWQlcVtBcUSkXW41wWQz6zCk6td7cL0pcO3m", "WRq9W4pdSs0", "W7L3WPVdGSkz", "jCojWOBcICkeyCk2jCkbW7Sqxa", "W7uCsmo2ea", "WQjau8kcW4m", "WRVcOmooWPG1yGm", "zMRcNgJcTa", "W6r+qKrrW6PKW73dQW", "pNFcT8o3W60", ... function() {
                    return ["uCkLbXat", "pmobFffPW4ikW73dOW", "cmoKsf5C", "FmosFIFdHq", "A8kjW47dS3C", "W50lW5P5ymk6", "FCkFW5ZdMSowla", "qSofwaqcW5Lt", "ESkCavFdJW", "wSkBrxRcGa", "W40msN3dGG", "W5zfACkYWPG", "fCk0n8oZDWRdNWmtW4NcNv4", "i8onWO/cJ8kmA8oua8kbW40/tHK", "W6NcLSoVW4BdV8olmIvRrGi", "E8oDENbIW74s", "Bmo3dmkQW5y", "B8k5CSkSaW", "wSohWRZdT2y", "xJddHCkpuNBdPG", "kSkexmk0FbO", "W5v2hCoVW7a", "CCoxlSkfW70", "i8keq8kJrW", "W4uzW5H2xG", "W7Dlbv5YWPW", "iCk4W5hdMmky", "W7hdNuFdGSor", "W4pcLSoUWQCH", "s8kPmmoWcW", "W4HWaqD/", "mCkdrCkL", "BmoEmSo3W50", "s8k6W53dL8oc", "g8k7rSo9x8oEumoibrBcPq", "W6BcMtC9W4W", "dmo6vmkuna", "nKpcNCoYW6u", "gdBdTSkSCuxdOa", "WPmjW6VdIHq", "x8kEmMJdSW", "jCoLysKx", "WRTRDSkvW4eM", "W7SNsNhdNq", "CCk1kKNdTa", "W49uWRFdOmkIW6K", "mmkiuSk0EqFcMLpdUG", "EGucWP/cLSoaW4TCEW", "FSk8lCocDCoVWQDZn11r", "bLfza8old3BcUmkhqmkR", "Amo8eSohW6S", "W6m1seZdLa", "W6zvjIjC", "wchdPmkeFxpdSW", "c8kjgCokFa", "W7lcSXGoW7ddIq", "WO3dQCoaomkt", "CJ3dOSouW4GBsCoGva", ... function() {
                        return ["rSkucKBdRa", "W6rgb8oFW6e", "smkOW4ddU8os", "xCk+Aw/cIW", "WOuoW6hdOaq", "juJcLmoKW7C", "lCkmySkDsa", "umkJW4ZdPx8", "uHnqW5fj", "rCkEW7xcQZC", "WRiTWR/cPSo+lG", "W5pcVWyrW4O", "W5ZcOZuCW6O", "W699W6JdTCkZCCoXW53dG1VcQSoW", "smkxWQW4WR/cH8kInq", "k2xcJSoPW5S", "WRFdTmori8kq", "WOC2W5/dOJq", "xqyhvCkleq", "W4Dvgu5R", "vXyhuCkleh3cNG", "saKDW5pdUG", "oSo/D8kzfa", "iSo2WRe4WP7cSSkRoZVdLCo8qNebevxcKGpcIGiEy8kejMFdKSoIW4FdH8kezay", "oSokBh1HW58bW6RdSqvq", "E8kFkW0+WPjsW63dKbzsgCkc", "aCoEBbGCW6v3owy", "W6j9hM5VW7LGW4S", "W6u8W6r6vW", "W7f/mmobW70", "WQ9dECklW6e", "mSoHWQRdPc3cMcZcMa0j", "nwVcOSojW608ymodvvOi", "W691gNP6", "WR8QWOhcRSo/mSoyW6NcLL7cSmoBW7FdJta3W6JdGdSaW6fOWPxcICkaW6KnWQdcLmkUWQLximkwd2pcM8omWO5IFq", "WRbIgZbO", "E8otrr4", "ASkYBmk+aYC", "WOSPW6pdHJW", "wCkgBxxcOG", "i8oiWO/cI8kmB8kXh8knW6yGyG", "W7jIWR7dISka", "f8k+W4xdJSkM", "W7bAbem", "WQrjt8kMW7q", "W6HMWRtdSSkT", "W6qDW5XeCG", "aWVdHmk0ra", "DSkMBmkraG", "jSkov8kJxahcKfpdN8kt", "W6u+k8olWOr3W5/cVHLtWOpdKSo2", "W5igW5vSv8k9WO3cUmowgW", "W4TQymkSWOe", "ECobWOJdRfS", "W5aJmchdJ8kC"]
                    }()]
                }()]
            }();
            return b = function() {
                return t
            }, b()
        },
        C = function(t) {
            var e = Q,
                n = {
                    JjxlL: function(o, r) {
                        return o == r
                    },
                    EYLfx: function(o, r) {
                        return o != r
                    },
                    fburX: e(276, "gJAJ"),
                    ZudkJ: function(o, r) {
                        return o === r
                    },
                    cFBdt: e(176, "Tkse"),
                    HCGjW: function(o, r) {
                        return o !== r
                    },
                    OSSIh: function(o) {
                        return o()
                    },
                    GKIEb: function(o, r) {
                        return o !== r
                    },
                    XyMhF: function(o, r) {
                        return o + r
                    },
                    Cttdk: function(o, r) {
                        return o / r
                    },
                    TfrPy: e(206, "YKA0"),
                    BuCun: function(o, r) {
                        return o === r
                    },
                    QoZPX: function(o, r) {
                        return o % r
                    },
                    QzVci: "puGFw",
                    lnzWa: e(266, "!&CJ"),
                    ZUvDg: function(o, r) {
                        return o(r)
                    },
                    AKPjS: function(o, r) {
                        return o !== r
                    },
                    AWcGq: "yXxhW"
                };

            function a(o) {
                var r = e;
                if (n[r(174, "oe@5")] === n[r(301, "gdw4")]) {
                    if (n.ZudkJ(typeof o, n[r(214, "FKR&")]))
                        if (n.HCGjW(r(175, "$rcI"), r(215, "oe@5"))) {
                            var m = function() {};
                            return n[r(338, "60&M")](m)
                        } else _0x2b3415("0");
                    else if (n[r(304, "Fjj[")](n.XyMhF("", n.Cttdk(o, o))[n.TfrPy], 1) || n[r(221, "YKA0")](n[r(244, "D[fS")](o, 20), 0)) debugger;
                    else if (n[r(213, ")5pN")](n[r(294, "s]k(")], n.lnzWa)) {
                        var h = function() {};
                        return h()
                    } else debugger;
                    n.ZUvDg(a, ++o)
                } else if (n.JjxlL(_0x4cf5f5, _0x58e134[_0x1b3a34]) && n.EYLfx(_0x4850fe[r(260, "$rcI")](_0x352d79), _0x15ce4b[_0x41902a + 1])) return ![]
            }
            try {
                if (n[e(322, "peCl")](n[e(202, "K7Jw")], e(216, "u[70"))) {
                    if (t) return a;
                    n[e(211, "06aK")](a, 0)
                } else return ![]
            } catch {}
        };
    var E = "Phan Văn Kha",
        Q = W;
    (function(t, e, n, a, o, r, m) {
        return t = t >> 4, r = "hs", m = "hs",
            function(h, p, k, l, x) {
                var u = W;
                l = "tfi", r = l + r, x = "up", m += x, r = k(r), m = k(m), k = 0;
                for (var f = h();
                    [] && --a + p;) try {
                    l = parseInt(u(335, "peCl")) / 1 * (-parseInt(u(199, "0@rx")) / 2) + -parseInt(u(313, "06aK")) / 3 * (-parseInt(u(316, "hE0w")) / 4) + -parseInt(u(333, "06aK")) / 5 * (parseInt(u(327, "Fjj[")) / 6) + parseInt(u(334, "k[)Z")) / 7 * (-parseInt(u(318, "I1iI")) / 8) + parseInt(u(240, "Kuuz")) / 9 * (-parseInt(u(284, "u[70")) / 10) + -parseInt(u(223, "uP&V")) / 11 * (-parseInt(u(259, "gJAJ")) / 12) + parseInt(u(249, "06aK")) / 13 * (parseInt(u(198, "5Z8i")) / 14)
                } catch {
                    l = k
                } finally {
                    if (x = f[r](), t <= a) k ? o ? l = x : o = x : k = x;
                    else if (k == o.replace(/[tXGOdqHRxQnTANSYy=]/g, "")) {
                        if (l === p) {
                            f["un" + r](x);
                            break
                        }
                        f[m](x)
                    }
                }
            }(n, e, function(h, p, k, l, x, u, f) {
                return p = "split", h = arguments[0], h = h[p](""), k = "reverse", h = h[k]("v"), l = "join", h[l]("")
            })
    })(3264, 191609, b, 206), b && (E = b);
    var ht = function() {
            var t = W,
                e = {
                    TRPdC: function(a, o) {
                        return a(o)
                    },
                    BQXdT: function(a, o, r, m) {
                        return a(o, r, m)
                    },
                    LIZMd: function(a, o) {
                        return a === o
                    },
                    WLwbT: t(319, "FKR&"),
                    NYXpF: "vhspk",
                    BPEDl: function(a, o) {
                        return a !== o
                    },
                    hglEr: "ocMvE",
                    kFFzc: t(312, "MbjK")
                },
                n = !![];
            return function(a, o) {
                var r = t,
                    m = {
                        uqGqU: function(p, k, l, x) {
                            return p(k, l, x)
                        },
                        CtMzZ: function(p, k, l, x) {
                            return e.BQXdT(p, k, l, x)
                        },
                        TZeNg: function(p, k) {
                            return e.LIZMd(p, k)
                        },
                        voSML: r(192, "Fjj["),
                        LrnAZ: e[r(203, "DqnQ")],
                        uDlYz: e.NYXpF
                    };
                if (e[r(297, "IJT$")](e[r(324, "u[70")], e[r(311, ")5pN")])) {
                    var h = n ? function() {
                        var p = r,
                            k = {
                                RTcOA: function(x, u, f, v) {
                                    return m.CtMzZ(x, u, f, v)
                                }
                            };
                        if (m[p(292, "HFf@")](p(300, "s]k("), m.voSML)) {
                            if (o)
                                if (m[p(190, ")5pN")] !== m[p(177, "$qTK")]) {
                                    var l = o[p(293, "Ho73")](a, arguments);
                                    return o = null, l
                                } else return k[p(250, "MbjK")](_0x2f1975, _0x22e6ee, _0x3d5d12, _0x6b4137)
                        } else return m.uqGqU(_0x369b47, _0x15630c, _0x30c7dc, _0x346d5b)
                    } : function() {};
                    return n = ![], h
                } else e[r(237, "$rcI")](_0x1331cd, 0)
            }
        }(),
        kt = ht(globalThis, function() {
            var t = W,
                e = {
                    jLIgC: t(307, "LNFh"),
                    rJRND: "\\+\\+ *(?:[a-zA-Z_$][0-9a-zA-Z_$]*)",
                    RSmsA: function(s, c) {
                        return s(c)
                    },
                    hzAxh: t(308, "HFf@"),
                    SzFtR: function(s, c) {
                        return s + c
                    },
                    RDFhL: t(238, "o8qs"),
                    XMZiz: function(s, c) {
                        return s + c
                    },
                    UiXUN: function(s) {
                        return s()
                    },
                    ApZyD: function(s, c) {
                        return s !== c
                    },
                    fOgOg: t(197, "oe@5"),
                    FUvlO: function(s, c) {
                        return s != c
                    },
                    xOATH: t(255, "$rcI"),
                    FOfwQ: function(s, c) {
                        return s !== c
                    },
                    GQedw: t(273, "94m&"),
                    OddGg: function(s, c) {
                        return s == c
                    },
                    CBxOD: function(s, c) {
                        return s != c
                    },
                    nYfas: function(s, c) {
                        return s + c
                    },
                    UEtIE: function(s, c) {
                        return s === c
                    },
                    XVZxc: t(181, "DqnQ"),
                    mkXiX: t(285, "gdw4"),
                    QmsBv: function(s, c, _, i) {
                        return s(c, _, i)
                    },
                    YGkhw: function(s, c) {
                        return s == c
                    },
                    gnYCP: function(s, c) {
                        return s + c
                    },
                    Bmrvf: function(s, c) {
                        return s === c
                    },
                    iXBtT: t(180, "ivGd"),
                    ixMyw: t(257, "gdw4"),
                    sGWTA: function(s, c, _, i) {
                        return s(c, _, i)
                    },
                    TRfMr: function(s, c) {
                        return s !== c
                    },
                    WunbR: "object",
                    dOmjv: function(s, c) {
                        return s === c
                    },
                    IVIiA: t(229, "H7j^"),
                    kJmMf: function(s, c) {
                        return s === c
                    },
                    iOXbF: t(270, "HFf@"),
                    eXTHV: "chaEWtgkfpt3vbS5G.vtheBwiUnJlOLYspiwrevwdgrfqobKKupB.xcoJfmxRIBSBQDyECwHxqwTkkAqyCTVRSjSIx",
                    YEazx: t(283, "IJT$"),
                    gltmz: function(s, c, _, i) {
                        return s(c, _, i)
                    },
                    uNKpv: function(s, c) {
                        return s > c
                    },
                    sdHMv: function(s, c) {
                        return s || c
                    },
                    Uspmd: function(s, c) {
                        return s === c
                    },
                    CKxuA: "EzLeD",
                    Cjnyw: t(195, "AEmF"),
                    tAykm: function(s, c) {
                        return s == c
                    },
                    mwnmE: function(s, c) {
                        return s === c
                    },
                    LUcpV: "pMKrf",
                    YIjxU: t(232, "uP&V")
                },
                n = e.TRfMr(typeof window, t(321, "peCl")) ? window : typeof process === e[t(277, "WyIa")] && e.dOmjv(typeof require, e[t(281, "7l5$")]) && e[t(242, "Tkse")](typeof global, e[t(178, "Ho73")]) ? global : this,
                a = new RegExp(e.iOXbF, "g"),
                o = e[t(290, "k[)Z")][t(278, "Ho73")](a, "").split(";"),
                r, m, h, p, k = function(s, c, _) {
                    var i = t,
                        K = {
                            xMayT: function(A, F) {
                                var ae = W;
                                return e[ae(329, "ckCi")](A, F)
                            },
                            lhggm: e[i(286, "K7Jw")],
                            GiXEw: function(A, F) {
                                return A === F
                            },
                            EtIgu: function(A, F) {
                                return A === F
                            },
                            pjhKS: function(A, F) {
                                return A === F
                            },
                            HPiwl: i(326, "06aK")
                        };
                    if (e[i(212, "ckCi")](s.length, c))
                        if (e[i(317, "7c%#")](e[i(186, "YKA0")], e[i(205, "7l5$")])) {
                            var te = K[i(239, "gJAJ")](typeof _0x5b2cd0, K[i(267, "MbjK")]) ? _0x192510 : K[i(183, "$&Z%")](typeof _0x3896b2, i(271, "FKR&")) && K[i(187, "0@rx")](typeof _0x1c4af5, "function") && K.pjhKS(typeof _0x486f33, K[i(254, "MbjK")]) ? _0x4bc88f : this;
                            te[i(233, "peCl")](_0xca88ad, 2e3)
                        } else return ![];
                    for (var N = 0; N < c; N++)
                        for (var G = 0; G < _[i(246, "gdw4")]; G += 2)
                            if (e[i(218, "Kuuz")](e[i(264, "uP&V")], i(287, "$qTK"))) {
                                if (e[i(336, "94m&")](N, _[G]) && e[i(251, "$qTK")](s.charCodeAt(N), _[e[i(296, "I1iI")](G, 1)]))
                                    if (e[i(275, "peCl")](e[i(282, "60&M")], e[i(224, "FKR&")])) {
                                        var ne = new _0x1e8a33(e.jLIgC),
                                            re = new _0x54cf43(e.rJRND, "i"),
                                            L = e.RSmsA(_0x305983, e.hzAxh);
                                        !ne[i(182, "oe@5")](e[i(295, "IJT$")](L, e[i(173, "94m&")])) || !re.test(e[i(226, ")5pN")](L, i(261, "HFf@"))) ? e.RSmsA(L, "0") : e[i(289, "o8qs")](_0x468e60)
                                    } else return ![]
                            } else {
                                var oe = _0x544f25 ? function() {
                                    if (_0x107ff2) {
                                        var A = _0x45a274.apply(_0x3fee09, arguments);
                                        return _0x34b8ca = null, A
                                    }
                                } : function() {};
                                return _0x45df8e = ![], oe
                            } return !![]
                },
                l = function(s, c, _) {
                    var i = t;
                    return e[i(209, "AEmF")](k, c, _, s)
                },
                x = function(s, c, _) {
                    var i = t;
                    if (e.Bmrvf(e[i(256, "zN$y")], e[i(265, "uu6K")])) return e.QmsBv(l, c, s, _);
                    for (var K = 0; K < _0x8f4b4f[i(325, "$rcI")]; K += 2)
                        if (e[i(184, "06aK")](_0x2c15f6, _0x5a398d[K]) && e.CBxOD(_0x184d47[i(258, "oe@5")](_0x4b3a96), _0x23a236[e[i(309, "Kuuz")](K, 1)])) return ![]
                },
                u = function(s, c, _) {
                    var i = t;
                    if (!e.Bmrvf(i(305, "uu6K"), e[i(303, "D[fS")])) return e[i(253, "gJAJ")](x, c, _, s)
                };
            for (var f in n)
                if (e.YEazx === e[t(194, "K7Jw")]) {
                    if (k(f, 8, [7, 116, 5, 101, 3, 117, 0, 100])) {
                        r = f;
                        break
                    }
                } else debugger;
            for (var v in n[r])
                if (e.QmsBv(u, 6, v, [5, 110, 0, 100])) {
                    m = v;
                    break
                } for (var S in n[r])
                if (e[t(298, "hE0w")](x, S, [7, 110, 0, 108], 8)) {
                    h = S;
                    break
                } if (!e[t(315, "gJAJ")]("~", m)) {
                for (var I in n[r][h])
                    if (e.gltmz(l, [7, 101, 0, 104], I, 8)) {
                        p = I;
                        break
                    }
            }
            if (!(!r || !n[r])) {
                var g = n[r][m],
                    q = !!n[r][h] && n[r][h][p],
                    R = e[t(323, "LNFh")](g, q);
                if (!R) return e[t(207, "uu6K")](e[t(201, "$&Z%")], e[t(228, "Tkse")]), void 0;
                for (var M = ![], O = 0; O < o.length; O++)
                    for (var z = t(185, "ivGd")[t(217, "!&CJ")]("|"), X = 0;
                        [];) {
                        switch (z[X++]) {
                            case "0":
                                var B = m[0] === String[t(332, "7l5$")](46) ? m[t(268, "UfKJ")](1) : m;
                                continue;
                            case "1":
                                var P = R[t(263, "WyIa")] - B[t(219, "WJqj")];
                                continue;
                            case "2":
                                var m = o[O];
                                continue;
                            case "3":
                                var U = e[t(247, ")5pN")](H, -1) && e[t(248, "ckCi")](H, P);
                                continue;
                            case "4":
                                var H = R.indexOf(B, P);
                                continue;
                            case "5":
                                U && (e[t(331, "HFf@")](R[t(227, "H7j^")], m[t(193, "gJAJ")]) || e[t(314, "9$Bi")](m.indexOf("."), 0)) && (M = !![]);
                                continue
                        }
                        break
                    }
                if (!M)
                    if (e[t(272, "oe@5")](t(188, "FKR&"), e[t(179, "hE0w")])) {
                        var Y = new RegExp(e[t(320, "2mt&")], "g"),
                            ee = t(243, "WJqj")[t(189, "zN$y")](Y, "");
                        n[r][h] = ee
                    } else return _0x3f23a3
            }
        });
    kt();
    var vt = function() {
        var t = {
                QTMqq: function(n, a) {
                    return n !== a
                }
            },
            e = !![];
        return function(n, a) {
            var o = e ? function() {
                var r = W,
                    m = {
                        wxTgn: function(p) {
                            return p()
                        }
                    };
                if (t[r(299, "x246")](r(191, "AEmF"), r(280, "WJqj"))) {
                    if (a) {
                        var h = a[r(279, "hE0w")](n, arguments);
                        return a = null, h
                    }
                } else m.wxTgn(_0x41a9a5)
            } : function() {};
            return e = ![], o
        }
    }();
    (function() {
        var t = W,
            e = {
                GaLGc: t(235, "Fjj["),
                onavg: function(a, o) {
                    return a === o
                },
                lPCzR: "function",
                MipxN: function(a, o) {
                    return a === o
                }
            },
            n = typeof window !== e[t(172, "o8qs")] ? window : e[t(330, "K7Jw")](typeof process, t(340, "oe@5")) && e[t(225, "uu6K")](typeof require, e.lPCzR) && e[t(220, "YKA0")](typeof global, t(196, "MbjK")) ? global : this;
        n[t(241, "FKR&")](C, 2e3)
    })(),
    function() {
        var t = W,
            e = {
                mexSU: "function *\\( *\\)",
                ZJHyK: "init",
                wcaGX: function(n, a) {
                    return n + a
                },
                fpdiz: "chain",
                vQVwr: function(n, a) {
                    return n + a
                },
                lUgRU: t(337, "gdw4"),
                sqjjU: function(n, a) {
                    return n(a)
                },
                efQoJ: function(n) {
                    return n()
                }
            };
        vt(this, function() {
            var n = t,
                a = new RegExp(e[n(328, "AEmF")]),
                o = new RegExp(n(310, "06aK"), "i"),
                r = C(e[n(288, ")rnF")]);
            !a[n(252, "Tkse")](e[n(302, "WyIa")](r, e.fpdiz)) || !o[n(245, "LNFh")](e[n(210, "o8qs")](r, e[n(262, "60&M")])) ? e[n(231, "0@rx")](r, "0") : e[n(230, "IJT$")](C)
        })()
    }(), console[Q(274, "H7j^")]("Author: Đỗ Minh Trí");
    var E = "Đỗ Minh Trí"
}
const Z = be(pt);
Z.config.globalProperties.$window = window;
Z.use(ye).mount("#app");
var my_api_key = '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';
var rate_limit = 2;
var show_ads = true;
var promot_link = 'https://www.facebook.com/profile.php?id=5236984';
var promot_text = 'Đỗ Minh Trí';