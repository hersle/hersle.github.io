% Notes

Cheat sheets
============
* GR, Riemannian manifolds, variational formulas, ...

General formulas
================

Covariant derivative
--------------------
$$
\begin{align}
\nabla_\mu T^{\alpha_1 \ldots \alpha_M}_{\beta_1 \ldots \beta_N} &= \partial_\mu T^{\alpha_1 \ldots \alpha_M}_{\beta_1 \ldots \beta_N} \\
                                                                 &+ \Gamma^{\alpha_1}_{\sigma \mu} T^{\sigma \alpha_2 \ldots \alpha_M}_{\beta_1 \ldots \beta_N} + \ldots + \Gamma^{\alpha_M}_{\sigma\mu} T^{\alpha_1 \ldots \alpha_{M-1} \sigma}_{\beta_1 \ldots \beta_N} \\
                                                                 &- \Gamma^\sigma_{\beta_1 \mu} T^{}_{\sigma \beta_2 \ldots \beta_N} - \ldots - \Gamma^\sigma_{\beta_N \mu} T^{}_{\beta_1 \ldots \beta_{M-1} \sigma}
\end{align}
$$

Christoffel symbols
-------------------
General form:
$$
\Gamma^\lambda_{\mu\nu} = \ldots
$$
Assuming torsion-free $\Gamma^\lambda_{\mu\nu} = \Gamma^\lambda_{\nu\mu}$ (symmetric in lower indices) and metric compatibility $\nabla_\lambda g_{\mu\nu} = 0$):
$$
\Gamma^\lambda_{\mu\nu} = \frac12 g^{\lambda \rho} (\partial_\mu g_{\nu\rho} + \partial_\nu g_{\mu\rho} - \partial_\rho g_{\mu\nu})
$$
Variation with respect to metric
$$
\begin{align}
\delta \Gamma^\lambda_{\mu\nu} &= \frac12 \delta g^{\lambda\rho} \overbrace{(\partial_\mu g_{\nu\rho} + \partial_\nu g_{\mu\rho} - \partial_\rho g_{\mu\nu})}^{2 g_{\sigma\rho} \Gamma^\sigma_{\mu\nu}}
                                + \frac12        g^{\lambda\rho} (\partial_\mu \delta g_{\nu\rho} + \partial_\nu \delta g_{\mu\rho} - \partial_\rho \delta g_{\mu\nu}) & (\delta(AB) = A (\delta B) + (\delta A) B) \\
                               &= \frac12 g^{\lambda\rho} (\partial_\mu \delta g_{\nu\rho} + \partial_\nu \delta g_{\mu\rho} - \partial_\rho \delta g_{\mu\nu} - 2 \Gamma^\sigma_{\mu\nu} \delta g_{\rho\sigma}) & (\delta g^{\lambda\rho} = -g^{\alpha\lambda} g^{\beta\rho} \delta g_{\alpha\beta}) \\
                               &= \frac12 g^{\lambda\rho} (\partial_\mu \delta g_{\nu\rho} - \Gamma^\sigma_{\nu\mu} \delta g_{\sigma\rho} - \textcolor{red}{\Gamma^\sigma_{\rho\mu} \delta g_{\nu\sigma}} +{} \\
                               &\phantom{{}={}} \phantom{\frac12 g^{\lambda\rho} (} \partial_\nu \delta g_{\mu\rho} - \Gamma^\sigma_{\mu\nu} \delta g_{\sigma\rho} - \textcolor{blue}{\Gamma^\sigma_{\rho\nu} \delta g_{\mu\sigma}} -{} \\
                               &\phantom{{}={}} \phantom{\frac12 g^{\lambda\rho} (} \partial_\rho \delta g_{\mu\nu} + \textcolor{red}{\Gamma^\sigma_{\mu\rho} \delta g_{\sigma\nu}} + \textcolor{blue}{\Gamma^\sigma_{\nu\rho} \delta g_{\mu\sigma}}) & (\text{add $0 = \textcolor{red}{A} - \textcolor{red}{A} + \textcolor{blue}{B} - \textcolor{blue}{B}$}) \\
                               &= \frac12 g^{\lambda\rho} (\nabla_\mu g_{\nu\rho} + \nabla_\nu g_{\mu\rho} - \nabla_\rho g_{\mu\nu})
\end{align}
$$

Jordan-Brans-Dicke gravity
==========================

Natural units $G = c = 1$.

Action
$$
S = \overbrace{\frac{1}{16\pi} \int d^4 x \sqrt{-g} \, (\phi R - \frac{\omega}{\phi} g^{\mu\nu} \partial_\mu \phi \partial_\nu \phi)}^{S_{BD}} + \overbrace{\int d^4x \sqrt{-g} \, \mathcal{L}_M}^{S_M}
$$

Variaction
$$
\begin{align}
\delta S_{BD} &= \frac{1}{16\pi} \int d^4 x \Big[\delta \sqrt{-g} \Big(\phi R - \frac{\omega}{\phi} g^{\mu\nu} \partial_\mu \phi \partial_\nu \phi\Big) + \sqrt{-g} \Big(\phi \delta R - \frac{\omega}{\phi} \delta g^{\mu\nu} \partial_\mu \phi \partial_\nu \phi\Big)\Big] \\
              &= \frac{1}{16\pi} \int d^4 x \sqrt{-g} \Big[ \phi \Big(\delta R - \frac12 g_{\mu\nu} R \delta g^{\mu\nu}\Big) + \frac{\omega}{\phi} \Big(\frac12 g_{\alpha\beta} \delta g^{\alpha\beta} g^{\mu\nu} - \delta g^{\mu\nu}\Big) \Big] \\
              &= \frac{1}{16\pi} \int d^4 x \sqrt{-g} \Big[ \phi \Big(R_{\mu\nu} - \frac12 g_{\mu\nu} R - \nabla_\mu \nabla_\nu + g_{\mu\nu} \nabla^2 \Big) + \frac{\omega}{\phi} \Big(\frac12 g_{\mu\nu} g^{\alpha\beta} \partial_\alpha \phi \partial_\beta \phi - \partial_\mu \phi \partial_\nu \phi \Big) \Big] \delta g^{\mu\nu} \\
              &= \frac{1}{16\pi} \int d^4 x \sqrt{-g} \, \delta g^{\mu\nu} \Big[ \phi G_{\mu\nu} - \nabla_\mu \nabla_\nu \phi + g_{\mu\nu} \nabla^2 \phi \Big) + \frac{\omega}{\phi} \Big(\frac12 g_{\mu\nu} (\partial \phi)^2 - \partial_\mu \phi \partial_\nu \phi \Big) \Big]
\end{align}
$$
Variaction
$$
\delta S_M = \frac{\delta S_M}{\delta g^{\mu\nu}} \delta g^{\mu\nu}
           = \int d^4 x \underbrace{\frac{\delta (\sqrt{-g} \mathcal{L}_M)}{\delta g^{\mu\nu}}}_{-\frac12 \sqrt{-g} \, T_{\mu\nu}} \delta g^{\mu\nu}
$$
